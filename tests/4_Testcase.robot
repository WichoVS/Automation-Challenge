*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.verizon.com/shop/
${MakeAndModel}    iPhone 13 Pro
${SELECTELEMENT}
${OPTIONCOUNT}
${SELECTEDVALUE}
${VALUELABELIMEI}

*** Test Cases ***
Buy a Smartphone with a new customer
    Enter to Verizon Shop Web
    Go To Bring Your Phone Form
    Fill Form
    Fill IMEI

*** Keywords ***
Enter to Verizon Shop Web
    Open Browser    ${URL}    ${BROWSER}

Go To Bring Your Phone Form
    Click Link    xpath=//*[@id="vz-gh20"]/div/div[1]/div/div[1]/div[4]/div/div/div[1]/div/div/div[1]/span/span[1]/a
    Wait Until Page Contains Element    xpath=/html/body/div[2]/main/div/div[1]/div/div/div/div[1]/section/div/div/div/div/div[1]/div/h1
    Click Button    xpath=//*[@id="hero"]/div/div/div/div/div[3]/div/div/button
    Wait Until Element Is Visible    xpath=/html/body/div[2]/main/div/div[1]/div/div/div/div[2]/div/div/div[2]/div
    Click Link    xpath=/html/body/div[2]/main/div/div[1]/div/div/div/div[2]/div/div/div[2]/div/div/div[1]/a
    Wait Until Page Contains Element    xpath=/html/body/div[7]/div[3]/div[1]/h1

Fill Form
    Click Element    xpath=/html/body/div[7]/div[3]/div[2]/div[2]/div[1]/label/div[1]/div
    Sleep    2s
    Click Button    xpath=/html/body/div[7]/div[3]/div[3]/button
    Sleep    3s
    Input Text    xpath=/html/body/div[7]/div[3]/div[2]/div/div/div/span/span/span/div[1]/input    ${MakeAndModel}
    Validate Select DropDown only have Select Option

Validate Select DropDown only have Select Option
    ${OPTIONCOUNT}    Get Element Count    //*[@id="page"]/div[3]/div[3]/div/div/span/span/div/select/option
    Should Be Equal As Strings    ${OPTIONCOUNT}    1

Fill IMEI
    Click Link    xpath=/html/body/div[7]/div[3]/span/a
    Wait Until Page Contains Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div/div/label/p
    ${VALUELABELIMEI}    Get Text    xpath=/html/body/div[7]/div[3]/div/div[2]/div/div/label/p
    Should Be Equal As Strings    ${VALUELABELIMEI}    IMEI number
