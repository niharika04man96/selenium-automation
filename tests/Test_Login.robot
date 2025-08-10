*** Settings ***
Library    JSONLibrary
Library    SeleniumLibrary
Resource   ../resource/LoginPage.robot
Resource    ../resource/FormPage.robot
Suite Setup    Open Browser To Base URL
Suite Teardown    Close Browser

*** Variables ***
${CONFIG_FILE}    config.json

*** Keywords ***
Open Browser To Base URL
    ${config}=    Load JSON From File    ${CONFIG_FILE}
    Open Browser    ${config["base_url"]}    chrome
    Maximize Browser Window

*** Test Cases ***
Valid Login Test
    ${config}=    Load JSON From File    ${CONFIG_FILE}
    Login With Credentials    ${config["username"]}    ${config["password"]}
    Verify User Is Logged In
