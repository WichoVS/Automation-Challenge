*** Settings ***
Library    SeleniumLibrary
Library    ../../functions/get_birthdate.py
Resource    ../config/elements.robot


*** Keywords ***
Fill Date
    Click Element    ${XPATH_INPUT_DATE}
    ${birthdate}    Get Birthdate
    Click Element    ${XPATH_INPUT_DATE}
    Press Keys    None    LEFT
    Press Keys    None    LEFT
    Press Keys    None    ${birthdate}
    Sleep    1s

Fill Question One
    Scroll Element Into View    ${XPATH_QUESTION_ONE}
    Click Element    ${XPATH_Q1_OPT1}
    Sleep    1s