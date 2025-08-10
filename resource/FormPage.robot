*** Settings ***
Library    SeleniumLibrary
Library    resource/utils/FakeData.py
Resource    ../resource/LoginPage.robot

*** Variables ***
${NAME_INPUT}        id:username
${PASSWORD_INPUT}    id:password
${SUBMIT_BUTTON}     xpath://button[@type='submit']
${SUCCESS_MESSAGE}   //div[@class="flash error"]

*** Keywords ***
Fill Form With Random Data
    ${rand_name}=    Generate Username
    ${rand_pass}=    Generate Password
    Input Text    ${NAME_INPUT}    ${rand_name}
    Input Text    ${PASSWORD_INPUT}    ${rand_pass}

Submit Form After Filling Data
    Click Button    ${SUBMIT_BUTTON}

Verify Success Message
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    timeout=10s
    ${msg}=    Get Text    ${SUCCESS_MESSAGE}
    Should Contain    ${msg.lower()}    your username is invalid! 
