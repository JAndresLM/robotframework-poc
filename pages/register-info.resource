*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for register page.
Library           SeleniumLibrary

*** Variables ***
${REGISTER_HEADER}     xpath=//h2[@class='challenge-heading' and contains(text(),'Create a Yahoo')]
${INPUT_FIRST_NAME}    xpath=//input[@id='usernamereg-firstName']
${INPUT_LAST_NAME}     xpath=//input[@id='usernamereg-lastName']
${INPUT_EMAIL}         xpath=//input[@id='usernamereg-userId']
${INPUT_PASSWORD}      xpath=//input[@id='usernamereg-password']
${SELECT_MONTH}        xpath=//select[@id='usernamereg-month']
${INPUT_DAY}           xpath=//input[@id='usernamereg-day']
${INPUT_YEAR}          xpath=//input[@id='usernamereg-year']
${BUTTON_NEXT}         xpath=//button[@id='reg-submit-button']


*** Keywords ***
Wait Until Create an Account Page is Displayed
    Wait Until Element Is Visible    ${REGISTER_HEADER}
    Wait Until Location Contains  login.yahoo.com/account/create

# **************** Business Keywords ****************
Type New User Information
    [Arguments]    ${first_name}  ${last_name}  ${email}  ${password}  ${month}  ${day}  ${year}
    Type First Name       ${first_name} 
    Type Last Name        ${last_name}
    Type Email            ${email}
    Type Password         ${password}
    Select Birth Month    ${month}
    Type Birth Day        ${day}
    Type Birth Year       ${year}

Move to Add Phone Page
    Click Button    ${BUTTON_NEXT}

# **************** Atomic Keywords ****************
Type First Name
    [Arguments]    ${first_name}
    Input Text    ${INPUT_FIRST_NAME}    ${first_name}

Type Last Name
    [Arguments]    ${last_name}
    Input Text    ${INPUT_LAST_NAME}    ${last_name}

Type Email
    [Arguments]    ${email}
    Input Text    ${INPUT_EMAIL}    ${email}

Type Password
    [Arguments]    ${password}
    Input Text    ${INPUT_PASSWORD}    ${password}

Select Birth Month
    [Arguments]    ${month_value}
    #Scroll Element Into View    ${SELECT_MONTH}
    Select From List By Label  ${SELECT_MONTH}    ${month_value}

Type Birth Day
    [Arguments]    ${day}
    Input Text    ${INPUT_DAY}    ${day}

Type Birth Year
    [Arguments]    ${year}
    Input Text    ${INPUT_YEAR}    ${year}