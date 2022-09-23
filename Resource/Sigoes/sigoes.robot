*** Settings ***
Resource            /Users/giovannianthionia/PycharmProjects/RobotTest/Frameworks/RoutersWebsite.robot

*** Variables ***
${link_url}             https://sigoes.com/
${search_sigoes}        xpath=//*[@id="main"]/div[1]/div/div/div[1]/div/form/div/input
${result_searching}     xpath=//*[@id="main"]/div[1]/div/div/div[1]/div/form/div/div[1]/ul/li[1]/a[1]
${expand_menu}          css=.site__menu
${menu_artikel}         css=.popup__menu [href='https\:\/\/sigoes\.com\/blog\/all']


*** Keywords ***
search sigoes by city
    Wait Until Element Is Visible       ${search_sigoes}
    Input Text                          ${search_sigoes}        Jakarta
    Wait Until Element Is Visible       ${result_searching}
    Click Element                       ${result_searching}
    Wait Until Element Is Visible       xpath=/html/body/div
    Sleep                               5s
    Click Element                       xpath=/html/body/div[1]/div[2]/div[2]/div/div/div[2]/div/div/div[3]

Akses menu artikel
    Wait Until Element Is Visible       ${expand_menu}
    Click Element                       ${expand_menu}
    Wait Until Element Is Visible       ${menu_artikel}
    Click Element                       ${menu_artikel}
#
