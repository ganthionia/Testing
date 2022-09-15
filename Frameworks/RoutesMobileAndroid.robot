*** Settings ***
Library                 AppiumLibrary       run_on_failure=AppiumLibrary.Capture Page Screenshot
Library                 OperatingSystem
Library                 String
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 Collections
#Library                 XvfbRobot
Library                 DateTime
#Library                ../Library/MolatvLibrary.py

#Frameworks
Resource                Configs.robot


#Resource Android App
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/Common/MobileSetUpAndroid.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/Android/TechoHotel/ClassHhotelByNameHotel.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/Android/CommonServices/AllowPermission.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/Android/CommonServices/BookingDetailsHotel.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/Android/CommonServices/PaymentV2.robot