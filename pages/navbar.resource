*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for navbar.
Resource          ../config/environment.resource
Library           SeleniumLibrary

*** Variables ***
${NAVBAR}            xpath=//div[@id='ybar-inner-wrap']
${SIGN_IN_BUTTON}    xpath=//a[text()='Sign in']


*** Keywords ***
Open Browser to Main Page
    Open Browser    ${APP_URL}    ${BROWSER}
    Title Should Be    Yahoo Finance - Stock Market Live, Quotes, Business & Finance News

Wait Until Navbar is Displayed
    Wait Until Element Is Visible  ${NAVBAR}

Open Sign In Page
    Click Element    ${SIGN_IN_BUTTON}
