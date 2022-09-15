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


#Resources
Resource                ../Resource/Common/Browsers.robot
Resource                ../Resource/Common/CommonKey.robot
Resource                ../Resource/MisterAladinX/BrowserMobile/TechoHotel/ClassHotelByNameHotel.robot
Resource                ../Resource/MisterAladinX/BrowserMobile/CommonServices/DetailsBookingHotels.robot
Resource                ../Resource/MisterAladinX/BrowserMobile/CommonServices/PaymentV2.robot
