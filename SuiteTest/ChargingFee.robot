*** Settings ***
Resource       /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot

#Library                     Selenium2Library
#Library         Process
#Library         Dialogs
#Library         WebDriverProfile.py

*** Variables ***
${startdate}            99


*** Test Cases ***

TC 001 Filter charging fee
    Browsers.Open MyHeadless Keyword
    charging_fee.Page Login
    charging_fee.Menu Charging Fee
    charging_fee.Kombinasi Filter
#    charging_fee.Filter status charging fee
#    charging_fee.Choose filter start date time              ${startdate}
#    charging_fee.Click Button Search
    Close Browser

# 