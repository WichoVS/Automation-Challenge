*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.verizon.com/smartphones/
${Zip Code}    35222

*** Test Cases ***
Buy a Smartphone with a new customer
    Enter to Verizon Shop Web
    Select a smartphone to buy
    Purchase as new Customer

*** Keywords ***
Enter to Verizon Shop Web
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    xpath=/html/body/div[4]/div/div[4]/section[1]/div[3]/div/div[1]/div[2]/div/div[1]/div

Select a smartphone to buy
    Click Element    xpath=/html/body/div[4]/div/div[4]/section[1]/div[3]/div/div[1]/div[2]/div/div[1]/div
    Wait Until Page Contains Element    id=cta-btn
    Scroll Element Into View    id=cta-btn
    Click Button    xpath=//*[@id="cta-btn"]/div[1]/button
    Wait Until Page Contains Element    xpath=//*[@id="flow-overlay"]/div[3]/div/div/div

Purchase as new Customer
    Click Button    xpath=//*[@id="flow-overlay"]/div[3]/div/div/div/div/span/div[2]/div/div[1]/button
    Clear ZipCode Input as new Customer
    Input Text    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    ${Zip Code}
    Click Button    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/button
    Sleep    2s

Clear ZipCode Input as new Customer
    Wait Until Page Contains Element    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input
    Click Element    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input
    Press Keys    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    BACKSPACE
    Press Keys    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    BACKSPACE
    Press Keys    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    BACKSPACE
    Press Keys    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    BACKSPACE
    Press Keys    xpath=//*[@id="zipCode-overlay"]/div[3]/div/div/div/div/span/div[2]/div[1]/div/div/span/span/span/div/input    BACKSPACE