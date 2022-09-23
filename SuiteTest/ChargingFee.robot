*** Settings ***
Resource                    /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot
#Library                     Selenium2Library
#Library         Process
#Library         Dialogs
#Library         WebDriverProfile.py

*** Variables ***
${startdate}            99


*** Test Cases ***

TC 001 Open browser
    Browsers.Open MyHeadless Keyword
    charging_fee.Filter charging fee
    charging_fee.Choose filter start date time              ${startdate}
    charging_fee.Click Button Search
    Close Browser

#     sigoes.Akses menu artikel