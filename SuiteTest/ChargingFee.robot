*** Settings ***
Resource                    /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot
#Library                     Selenium2Library
#Library         Process
#Library         Dialogs
#Library         WebDriverProfile.py

*** Variables ***
${startdate}            99


*** Test Cases ***
    [Documentation]             Open MyHeadless Browsers Keyword
	[Tags]                      Charging Fee Test

TC 001 Filter charging fee
    Browsers.Open MyHeadless Keyword
    charging_fee.Page Login
    charging_fee.Menu Charging Fee
    charging_fee.Filter payment method
#    charging_fee.Filter status charging fee
#    charging_fee.Choose filter start date time              ${startdate}
#    charging_fee.Click Button Search
    Close Browser

TC 002 Clear Filter
