*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library    JSONLibrary

*** Variables ***
${USERNAME_INPUT}     id:user-name
${PASSWORD_INPUT}     id:password
${LOGIN_BUTTON}       id:login-button
${DASHBOARD_ELEMENT}  class:app_logo

*** Keywords ***
Open Login Page
    [Arguments]    ${base_url}
    Go To    ${base_url}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify User Is Logged In
    Wait Until Element Is Visible    ${DASHBOARD_ELEMENT}    timeout=10s
