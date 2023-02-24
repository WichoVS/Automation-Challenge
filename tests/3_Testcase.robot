*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../functions/validar_valores.py

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.verizon.com/plans/
${PlanValue}
@{1L_Plans} 
@{4L_Plans}
${isValid}    False
${StringToList}

*** Test Cases ***
Verify Mobile plans data is correct
    Enter to Verizon Shop Web

*** Keywords ***
Enter to Verizon Shop Web
    Open Browser    ${URL}    ${BROWSER}
    Select Plan and go to Plans Page

Select Plan and go to Plans Page
    Wait Until Page Contains Element    xpath=//a[@href="/plans/unlimited/"]
    Sleep    2s
    Scroll Element Into View    xpath=//a[@href="/plans/unlimited/"]
    Click Link    xpath=//a[@href="/plans/unlimited/"]
    Wait Until Page Contains Element    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/h2
    Go To Plans Component And Validate


Go To Plans Component And Validate
    Sleep    5s
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[2]/div/div/div/div
    Scroll Element Into View    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[2]/div/div/div/div
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[1]
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[1]
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[1]
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[1]/div[2]/p[3]/span[1]/strong/span[1]
    Append To List    ${1L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[2]/div[1]/p[3]/span[1]/strong/span[1]
    Append To List    ${1L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[3]/div[1]/p[3]/span[1]/strong/span[1]
    Append To List    ${1L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[4]/div[1]/p[3]/span[1]/strong/span[1]
    Append To List    ${1L_Plans}    ${PlanValue}
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[2]
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[2]
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[2]
    Click Button    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[1]/div/div/div/button[2]
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[1]/div[2]/p[3]/span[1]/strong/span[5]
    Append To List    ${4L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[2]/div[1]/p[3]/span[1]/strong/span[5]
    Append To List    ${4L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[3]/div[1]/p[3]/span[1]/strong/span[5]
    Append To List    ${4L_Plans}    ${PlanValue}
    ${PlanValue}    Get Text    xpath=/html/body/div[1]/div/main/div/div[3]/div/div/div/div/div[5]/section/div/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div/section/div/div[3]/div/div/div[4]/div[1]/p[3]/span[1]/strong/span[5]
    Append To List    ${4L_Plans}    ${PlanValue}
    ${isValid}    Validar Valores    ${1L_Plans}    ${4L_Plans}
    Should Be True    ${isValid}
