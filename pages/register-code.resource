*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for verification code.
Library           SeleniumLibrary

*** Variables ***
${CODE_HEADER}   xpath=//h2[@class='challenge-heading' and contains(text(),'Enter verification')]
${INPUT_CODE}    xpath=//input[@id='verification-code-field']
${BUTTON_NEXT}    xpath=//button[@id='verify-code-buttonn']
${ERROR_MESSAGE}    xpath=//div[@class='error-msg']



*** Keywords ***
Wait Until Enter Code Page is Displayed
    Wait Until Element Is Visible    ${CODE_HEADER}

Type Verification Code
    [Arguments]    ${phone}
     Input Text    ${INPUT_CODE}    ${phone}

Move to Confirmation Screen
    Click Button    ${BUTTON_NEXT}


Error Message in Code Verification Is Displayed
    [Arguments]    ${msg}
    Element Text Should Be    ${ERROR_MESSAGE}   ${msg}
