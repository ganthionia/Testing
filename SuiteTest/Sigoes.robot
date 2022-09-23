*** Settings ***
Resource                    /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot
#Library                     Selenium2Library
#Library         Process
#Library         Dialogs
#Library         WebDriverProfile.py

*** Variables ***



*** Test Cases ***

TC 001 Open browser
    Browsers.Open MyHeadless Keyword
    sigoes.search sigoes by city
#     sigoes.Akses menu artikel