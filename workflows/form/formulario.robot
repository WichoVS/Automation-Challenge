*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/utils/open_browser.robot
Resource    ../../resources/pages/form_page.robot

*** Test Cases ***
Open Browser in Form
    Open Browser in Form
    Fill Date
    Fill Question One
