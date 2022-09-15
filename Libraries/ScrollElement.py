import jwt
import os
import re
import time
import random
import requests
from datetime import  datetime
from logging import exception, info
from pathlib import Path
from AppiumLibrary import AppiumLibrary as BaseAppiumLibrary
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from hopper.AdbLibrary import AdbLibrary
from robot.api.logger import error, console


class AppiumLibrary(BaseAppiumLibrary):
    def scroll_until_element_text_is_match(self, locator, match, regexp=None, scroll_count=0, timeout=None, error=None):
        width = self.get_window_width()
        height = self.get_window_height()
        start_x = width * 0.5
        start_y = height * 0.4
        end_x = width * 0.5
        end_y = height * 0.8
        try:
            self.check_element_text_matches_string(locator, match, regexp, timeout)
            return
        except Exception:
            pass
        for _ in range(scroll_count):
            self.swipe(start_x, end_y, end_x, start_y)
            try:
                self.check_element_text_matches_string(locator, match, regexp, timeout)
                return
            except Exception:
                pass
        for _ in range(2 * scroll_count):
            self.swipe(start_x, start_y, end_x, end_y)
        for _ in range(scroll_count):
            try:
                self.check_element_text_matches_string(locator, match, regexp, timeout)
                return
            except Exception:
                pass
            self.swipe(start_x, end_y, end_x, start_y)
        raise AssertionError(error or "Element locator '%s' text did not match with '%s' after %s" % (
        locator, str(match), self._format_timeout(timeout)))

    def scroll_until_element_is_visible(self, locator, scroll_count, scroll_direction="DOWN", container=None,
                                        timeout=None, error=None):
        width = self.get_window_width()
        height = self.get_window_height()
        start_x = width * 0.5
        start_y = height * 0.6
        end_x = width * 0.5
        end_y = height * 0.2
        if scroll_direction == "UP": start_y, end_y = end_y, start_y
        try:
            if container != None:
                super().wait_until_element_is_visible(container, timeout, error)
                self.scroll_horizontal_until_element_is_visible(locator, container, scroll_count)
                return
            super().wait_until_element_is_visible(locator, timeout, error)
            return
        except Exception as e:
            pass
        for _ in range(scroll_count):
            self.swipe(start_x, start_y, end_x, end_y)
            try:
                if container != None:
                    super().wait_until_element_is_visible(container, timeout, error)
                    self.scroll_horizontal_until_element_is_visible(locator, container, scroll_count)
                    return
                super().wait_until_element_is_visible(locator, timeout, error)
                return
            except Exception as e:
                pass
        for _ in range(2 * scroll_count):
            self.swipe(start_x, end_y, end_x, start_y)
        for _ in range(scroll_count):
            try:
                if container != None:
                    super().wait_until_element_is_visible(container, timeout, error)
                    self.scroll_horizontal_until_element_is_visible(locator, container, scroll_count)
                    return
                super().wait_until_element_is_visible(locator, timeout, error)
                return
            except Exception as e:
                pass
            self.swipe(start_x, start_y, end_x, end_y)
        raise AssertionError(error or "Element locator '%s' did not match any elements after %s" % (
        locator, self._format_timeout(timeout)))
