*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for sign in page.
Library           SeleniumLibrary

*** Variables ***
${LOGIN_FORM}               xpath=//div[@id='login-landing']
${CREATE_ACCOUNT_BUTTON}    xpath=//a[contains(text(), 'Create an')]


*** Keywords ***
Wait Until Sign In Page is Displayed
    Wait Until Element Is Visible    ${LOGIN_FORM}
    Wait Until Location Contains  login.yahoo.com

Open Create an Account Page
    Click Element    ${CREATE_ACCOUNT_BUTTON}