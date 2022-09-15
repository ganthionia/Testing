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


#Resource iOS App
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/Common/MobileSeUpiOS.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/iOS/CommonServices/ClassLoginMisterAladinX-iOS.robot
Resource                /Users/andikaprananto/Documents/GitHub/maProj-Automation-TE/Resource/MisterAladinX/iOS/TechoHotel/ClassTechoHotelByName.robot