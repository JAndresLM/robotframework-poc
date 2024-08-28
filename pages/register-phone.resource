*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for verification phone.
Library           SeleniumLibrary

*** Variables ***
${PHONE_HEADER}   xpath=//h2[@class='challenge-heading' and contains(text(),'Add your phone')]
${INPUT_PHONE}    xpath=//input[@id='usernamereg-phone']
${BUTTON_GET_BY_SMS}    xpath=//button[@id='reg-sms-button']



*** Keywords ***
Wait Until Add Your Phone Page is Displayed
    Wait Until Element Is Visible    ${PHONE_HEADER}

Choose Get Code By SMS
    Click Button    ${BUTTON_GET_BY_SMS}

Type Phone Number
    [Arguments]    ${phone}
     Input Text    ${INPUT_PHONE}    ${phone}