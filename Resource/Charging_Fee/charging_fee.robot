*** Settings ***
Resource                   /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot

*** Variables ***
${link_url}                         https://payment-gateway.misteralad.in/
${button_login}                     xpath=//*[@id="__layout"]/div/div[2]/div/div/button
${menu_chargingfee}                 xpath=//div[@id='__layout']//nav[@class='nav']/div[@class='v-sidebar-menu vsm_expanded vsm_white-theme']//a[@href='/admin/chargingfee']/span[@class='vsm--title']
${Dropdown_Status}                  css=.input-group .departure:nth-of-type(5) .p-dropdown-label
${DropdowmStatusInactive}           css=.p-dropdown-items .p-dropdown-item:nth-of-type(3)
${Search_Button}                    css=.p-button.p-component.submit-button



*** Keywords ***

Filter charging fee
    Wait Until Element Is Visible       ${button_login}
    Click Element                       ${button_login}
    Wait Until Element Is Visible       ${menu_chargingfee}
    Click Element                       ${menu_chargingfee}
#    Wait Until Element Is Visible       ${Dropdown_Status}
#    Sleep                               2s
#    Click Element                       ${Dropdown_Status}

Choose filter start date time
    [Arguments]                         ${startdate}
    ${startdate}                  Get Current Date            increment=1 day             result_format=%d
    ${startdate}=                 Convert To Integer          ${startdate}
    Log     NEXT DAY ${startdate}
    Wait Until Element Is Visible   css=.input-group .departure:nth-of-type(1) [tabindex='-1']
    Sleep                           ${DELAY}
    Click Element                   css=.input-group .departure:nth-of-type(1) [tabindex='-1']
    #    Click Element              xpath=//*[@text='${tgl_checkin}']
    Click Element                   xpath=//span[contains(.,'${startdate}')]
    Sleep                           6s
    Click Element                   css=.input-group .departure:nth-of-type(1) [tabindex='-1']

Click Button Search
    Wait Until Element Is Visible   ${Search_Button}
    Click Element                   ${Search_Button}
    Sleep                           10s

