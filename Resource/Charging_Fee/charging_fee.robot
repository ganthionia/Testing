*** Settings ***
Resource                            /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot

*** Variables ***
${link_url}                         https://payment-gateway.misteralad.in/

${field_email}                      xpath=/html//input[@id='email']
${field_pass}                       xpath=/html//input[@id='password']
${button_login}                     xpath=//*[@id="__layout"]/div/div[2]/div/div/button
${email}                            admin@misteraladin.com
${password}                         MisterAladin122

${menu_chargingfee}                 xpath=//div[@id='__layout']//nav[@class='nav']/div[@class='v-sidebar-menu vsm_expanded vsm_white-theme']//a[@href='/admin/chargingfee']/span[@class='vsm--title']
${DropdownPayment_Method}           css=.p-multiselect-label.p-placeholder
${Checkbox_AllPayment}              xpath=/html/body/div/div/div/div[1]/main/div/div/main/div[2]/div/div[1]/div/div[3]/div/div[4]/div[1]/div[1]/div[2]

${Dropdown_Status}                  css=.input-group .departure:nth-of-type(5) .p-dropdown-label
${DropdownStatusActive}             xpath=/html//div[@id='__layout']/div[@class='main']//main[@class='content']/div[@class='main-content']/div[@class='content']/main/div[2]//ul[@role='listbox']/li[2]
${DropdowmStatusInactive}           css=.p-dropdown-items .p-dropdown-item:nth-of-type(3)
${DropdownStatusAll_status}         css=.p-dropdown-item.p-highlight

${Search_Button}                    css=.p-button.p-component.submit-button
${Clear_filter}                     css=.p-button-outlined.p-button

${Filter_Type}                      xpath=/html//div[@id='__layout']/div[@class='main']//main[@class='content']/div[@class='main-content']/div[@class='content']/main/div[2]//span[@class='p-dropdown-label p-inputtext p-placeholder']
${Filter_Type2}                     css=.input-group .departure:nth-of-type(4) .p-dropdown-label
${Filter_Amount }                   css=.p-dropdown-items .p-dropdown-item:nth-of-type(2)
${Filter_Percentage}                css=.p-dropdown-items .p-dropdown-item:nth-of-type(3)
${Filter_Alltype}                   css=.p-dropdown-items .p-dropdown-item:nth-of-type(1)



*** Keywords ***

Page_login    
# [Arguments]    ${email}    ${password}

    Page Should Contain Element         ${field_email}
    Wait Until Element Is Visible       ${field_email}
    Sleep                               1
    Input Text                          ${field_email}        ${email}

    Page Should Contain Element         ${field_pass}
    Wait Until Element Is Visible       ${field_pass}
    Sleep                               1.5
    Input Text                          ${field_pass}         ${password}
   
    Wait Until Element Is Visible       ${button_login}
    Click Element                       ${button_login}

    Click Element                       xpath=/html//div[@id='__layout']//div[@class='main-input']//small[.='Forgot Password']

Menu Charging Fee
    Wait Until Element Is Visible       ${menu_chargingfee}
    Click Element                       ${menu_chargingfee}

Filter payment method
    Wait Until Element Is Visible       ${DropdownPayment_Method}
    Click Element                       ${DropdownPayment_Method}
    Sleep                               5s
    Click Element                       ${Checkbox_AllPayment}

    Wait Until Element Is Visible       ${Dropdownpayment_method}
    Click Element                       ${DropdownPayment_Method}
    Click Element                       ${Search_Button}

Filter status charging fee
    Wait Until Element Is Visible       ${Dropdown_Status}
    Sleep                               2s
    Click Element                       ${Dropdown_Status}

    Wait Until Element Is Visible       ${DropdownStatusActive}
    Click Element                       ${DropdownStatusActive}
    Click Element                       ${Search_Button}
#    Click Element                       ${Dropdown_Status}
    Sleep                               5s

    Wait Until Element Is Visible       ${Dropdown_Status}
    Click Element                       ${Dropdown_Status}
    Wait Until Element Is Visible       ${DropdowmStatusInactive}
    Click Element                       ${DropdowmStatusInactive}
    Click Element                       ${Search_Button}
#    Click Element                       ${Dropdown_Status}
    Sleep                               5s

    Wait Until Element Is Visible       ${Dropdown_Status}
    Click Element                       ${Dropdown_Status}
    Wait Until Element Is Visible       ${DropdownStatusAll_status}
    Click Element                       ${DropdownStatusAll_status}
    Click Element                       ${Search_Button}
    Sleep                               5s

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


    # Click Element                       ${now} Evaluate '{dt:%A}, {dt:%B} {dt.day}, {dt.year}'.format(dt=datetime.datetime.now()) modules=datetime



Click Button Search
    Wait Until Element Is Visible       ${Search_Button}
    Click Element                       ${Search_Button}
    Sleep                               10s

Clear filter
    Wait Until Element Is Visible       ${Clear_filter}
    Click Element                       ${Clear_filter}

Kombinasi Filter
    Wait Until Element Is Visible       ${Dropdown_Status}
    Sleep                               2s
    Click Element                       ${Dropdown_Status}

    Wait Until Element Is Visible       ${DropdownStatusActive}
    Click Element                       ${DropdownStatusActive}

    Wait Until Element Is Visible       ${Clear_filter}
    Click Element                       ${Clear_filter}

Filter Type
    Wait Until Element Is Visible       ${Filter_Type}
    Sleep                               2
    Click Element                       ${Filter_Type}

    Wait Until Element Is Visible       ${Filter_Amount}
    Click Element                       ${Filter_Amount}
    Sleep                               2
    Click Element                       ${Search_Button}
    Scroll Element Into View            xpath=//*[@id="__layout"]/div/div[1]/main/div/div/main/div[3]/div/div/div/div[1]/table/tbody/tr[9]/td[3]
    Sleep                               3
    Scroll Element Into View            xpath=/html//div[@id='__layout']//div[@class='main-content']//main/div[2]/div[@class='p-card-body']
    # Click Element                       css=.p-button-outlined.p-button

    Sleep                               4.5
    Wait Until Element Is Visible       ${Filter_Type2}
    Click Element                       ${Filter_Type2}
    
    Wait Until Element Is Visible       ${Filter_Alltype}
    Click Element                       ${Filter_Alltype}
    Click Element                       ${Search_Button}
    # Scroll Element Into View            xpath=/html//div[@id='__layout']/div[@class='main']//div[@class='main-content']//main/div[3]/div[@class='p-card-body']/div[@class='p-card-content']/div//table[@role='table']/tbody[@role='rowgroup']/tr[8]/td[7]
    # Sleep                               3
    # Scroll Element Into View            xpath=/html//div[@id='__layout']//div[@class='main-content']//main/div[2]/div[@class='p-card-body']

    Wait Until Element Is Visible       ${Filter_Type2}
    Click Element                       ${Filter_Type2}
    
    Wait Until Element Is Visible       ${Filter_Percentage}
    Click Element                       ${Filter_Percentage}
    Click Element                       ${Search_Button}
    # Scroll Element Into View            xpath=/html//div[@id='__layout']/div[@class='main']//div[@class='main-content']//main/div[3]/div[@class='p-card-body']/div[@class='p-card-content']/div//table[@role='table']/tbody[@role='rowgroup']/tr[8]/td[7]
    # Sleep                               3
    # Scroll Element Into View            xpath=/html//div[@id='__layout']//div[@class='main-content']//main/div[2]/div[@class='p-card-body']


