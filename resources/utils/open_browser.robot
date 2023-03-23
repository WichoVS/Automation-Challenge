*** Settings ***
Library    SeleniumLibrary
Resource    ../config/globals.robot
Resource    ../config/elements.robot

*** Keywords ***
Open Browser in Form
    Open Browser    ${URL}    ${BROWSER}
    Validate Form Is Visible
    
Validate Form Is Visible
    Wait Until Page Contains Element    ${XPATH_FORM_LOADED}    30