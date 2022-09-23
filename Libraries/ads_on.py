from selenium import webdriver

class WebDriverProfile:
    def create_web_driver_with_addons(self):
        extension_location='d:\\path_to_adblock\\ublock_origin-1.24.0-an+fx.xpi'
        browser = webdriver.Chrome()
        browser.install_addon(extension_location, temporary=True)
        browser.get('https://sigoes.com/place/taman-impian-jaya-ancol')
