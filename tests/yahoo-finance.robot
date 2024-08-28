*** Settings ***
Documentation     This is a simple test in Yahoo Finances Website.
Resource          ../pages/navbar.resource
Resource          ../pages/signin.resource
Resource          ../pages/register-info.resource
Resource          ../pages/register-phone.resource
Resource          ../pages/register-code.resource
Library           SeleniumLibrary

Test Setup         Open Browser to Main Page
Test Teardown      Close Browser

*** Variables ***
${LOGIN URL}      https://finance.yahoo.com/
${BROWSER}        Chrome

*** Test Cases ***
User is not able to create an account when phone code is iscorrect
    Wait Until Navbar is Displayed
    Open Sign In Page
    Wait Until Sign In Page is Displayed
    Open Create an Account Page
    Wait Until Create an Account Page is Displayed
    Type New User Information    Andres    Lopez    andrestest.qust2    And@test123    January    16    1995
    Move to Add Phone Page
    Wait Until Add Your Phone Page is Displayed
    Type Phone Number    86261103
    Choose Get Code By SMS
    Wait Until Enter Code Page is Displayed
    Type Verification Code    154785
    Move to Confirmation Screen
    Error Message in Code Verification Is Displayed    msg=That looks like the wrong code.
    
