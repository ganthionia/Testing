*** Settings ***
#Library                        SeleniumLibrary
#Library                        OperatingSystem
#Library                        String
#Library                        RequestsLibrary
#Library                        JSONLibrary
#Library                        Collections
#Library                        XvfbRobot
Resource                        /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot


*** Variables ***
#Headless


*** Keywords ***
Open MyHeadless Keyword
    ${options}=         Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method         ${options}      add_argument    --headless
    Call Method         ${options}      add_argument    test-type
    Call Method         ${options}      add_argument    --disable-dev-shm-usage
    Call Method         ${options}      add_argument    --disable-gpu
    Call Method         ${options}      add_argument    --disable-extensions
    Call Method         ${options}      add_argument    --disable-popup-blocking
    Call Method         ${options}      add_argument    --ignore-certificate-errors
    Call Method         ${options}      add_argument    --disable-extensions
    Call Method         ${options}      add_argument    --disable-notifications
    Call Method         ${options}      add_argument    --disable-infobars
#     my_create_webdriver   Chrome  ${options}
    Open Browser        ${HOST_URL}      ${BROWSER}
    Maximize Browser Window

Open MyHeadless Mobile Website Keyword
    ${options}=         Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method         ${options}      add_argument    --headless
#    Call Method         ${options}      add_argument    test-type
#    Call Method         ${options}      add_argument    --disable-dev-shm-usage
#    Call Method         ${options}      add_argument    --disable-gpu
#    Call Method         ${options}      add_argument    --disable-extensions
#    Call Method         ${options}      add_argument    --disable-popup-blocking
#    Call Method         ${options}      add_argument    --ignore-certificate-errors
#    Call Method         ${options}      add_argument    --disable-extensions
#    Call Method         ${options}      add_argument    --disable-notifications
#    Call Method         ${options}      add_argument    --disable-infobars
#     my_create_webdriver   Chrome  ${options}
    Open Browser        ${HOST_WEBMOB}      ${BROWSER}
    Maximize Browser Window

Open Browser Mobile Browser
    ${Options}     Create Dictionary    androidPackage    com.android.chrome
    ${caps}         Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${caps}    platformName        Android
    Set to Dictionary    ${caps}    platformVersion     11.0
    Set To Dictionary    ${caps}    deviceName          emulator-5554
    Set To Dictionary    ${caps}    browserName         Chrome
    Create Webdriver    Remote      command_executor=http://localhost:4723/wd/hub    desired_capabilities=${caps}
    go to    http://www.google.com


Open Mobile Broswer ChromeDriver & Viewport
    ${device metrics}=    Create Dictionary    width=${450}    height=${851}    pixelRatio=${3.0}    userAgent=Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19
    ${mobile emulation}=    Create Dictionary    deviceMetrics=${device metrics}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_experimental_option    mobileEmulation    ${mobile emulation}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Set Window Size     ${450}     ${1000}
    Goto    ${HOST_WEBMOB}
    Sleep   3 secs

Close Browser
    Close Window

