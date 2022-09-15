*** Settings ***
Resource          /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot
#Resource          /Users/giovannianthionia/PycharmProjects/RobotTest/

*** Variables ***
#${NameHotel}        Roemahkoe Heritage Hotel Boutique
#${tgl_checkin}      10
#${tgl_checkout}     11
#${FullName}         Yanto Surinto
#${NoHandphone}      08129968393234
#${eMail}            yanto.surinto@mail.com



*** Test Cases ***
TC001 Open MyHeadless Browsers Keyword
    [Documentation]             Open MyHeadless Browsers Keyword
	[Tags]                      Website Desktop

	Open Browser                https://payment-gateway.misteralad.in/admin     chrome
	Maximize Browser Window
	Close Browser

#    Browsers.Open MyHeadless Keyword
#    CommonKey.Allow Permission Website Dekstop
#    CommonKey.Capture Current Page

#TC002 Search Hotel & Choose Result Search Hotel
#    [Documentation]             Search Hotel & Choose Result Search Hotel
#	[Tags]                      Website Desktop
#	ClassHotelByNameHotel.Click Button Hotel
#	CommonKey.Capture Current Page
#	ClassHotelByNameHotel.Search Hotel & Choose Result Search Hotel         ${NameHotel}
#	CommonKey.Capture Current Page
#
#TC003 Date CheckIn & CheckOut Hotel
#    [Documentation]             Date CheckIn & CheckOut Hotel
#	[Tags]                      Website Desktop
#	ClassHotelByNameHotel.Click Field Date CheckIn & CheckOut
#	CommonKey.Capture Current Page
#    ClassHotelByNameHotel.Choose Dates Of Stay CheckIn      ${tgl_checkin}
#    CommonKey.Capture Current Page
#    ClassHotelByNameHotel.Choose Dates Of Stay CheckOut     ${tgl_checkout}
#    CommonKey.Capture Current Page
#
#TC004 Verify Total Night Stay Hotel
#    [Documentation]             Verify Total Night Stay Hotel
#	[Tags]                      Website Desktop
#    ClassHotelByNameHotel.Verify Total Night
#
#TC005 Total Room & Gues, Search Hotel
#    [Documentation]             Verify Total Night Stay Hotel
#	[Tags]                      Website Desktop
#	ClassHotelByNameHotel.Total Room & Gues, Search Hotel
#
#TC006 Select Room Hotel Result
#    [Documentation]             Select Room Hotel Result
#	[Tags]                      Website Desktop
#	ClassHotelByNameHotel.Select Room Hotel
#
#TC007 Detail Booking
#    [Documentation]             Detail Booking
#	[Tags]                      Website Desktop
#	DetailBookingHotel.Detail Booking
#	DetailBookingHotel.Input Name        ${FullName}
#	DetailBookingHotel.Input No Handphone   ${NoHandphone}
#	DetailBookingHotel.Input e-Mail         ${eMail}
#
#TC008 Choose Payment Methode
#    [Documentation]             Choose Payment Methode
#	[Tags]                      Website Desktop
#	PaymentV2.Internet Banking
#	PaymentV2.BCA KlikPay Internet Banking

#	Browsers.Close Browser
