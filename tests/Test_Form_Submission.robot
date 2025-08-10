*** Settings ***
Library    JSONLibrary
Library    SeleniumLibrary
Resource   ../resource/FormPage.robot
Resource    ../resource/LoginPage.robot
Suite Setup    Open Browser To Form URL
Suite Teardown    Close Browser

*** Variables ***
${CONFIG_FILE}    config.json

*** Keywords ***
Open Browser To Form URL
    ${config}=    Load JSON From File    ${CONFIG_FILE}
    Open Browser    ${config["form_url"]}    chrome
    Maximize Browser Window

*** Test Cases ***
Form Submission Test
    Fill Form With Random Data
    Submit Form After Filling Data
    Verify Success Message
