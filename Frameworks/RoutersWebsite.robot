*** Settings ***
Library                 SeleniumLibrary
#Library                 Selenium2Library
Library                 OperatingSystem
Library                 String
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 Collections
Library                 BuiltIn
#Library                 XvfbRobot
Library                 DateTime
#Library                ../Library/MolatvLibrary.py

#Frameworks
Resource                Configs.robot


##Resources
#Resource                ../Resource/MisterAladinX/WebsiteDektop/TechoHotel/ClassHotelByNameHotel.robot
#Resource                ../Resource/Common/Browsers.robot
#Resource                ../Resource/Common/CommonKey.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/CommonServices/DetailBookingHotel.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/CommonServices/PaymentV2.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/CommonServices/RegisterMisterAladinX.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/TechoTrain/ClassTranByAllStationOneWay.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/CommonServices/DetailBookingTrains.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/TechoExplore/ClassAladinXExploreByCity.robot
#Resource                ../Resource/MisterAladinX/WebsiteDektop/CommonServices/DetailBookingAladinExplore.robot
##Resources
##Resource                ../Resource/MisterAladinX/BrowserMobile/TechoHotel/ClassHotelByNameHotel.robot

Resource                   ../Resource/Common/Browsers.robot