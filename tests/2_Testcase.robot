*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.verizon.com/smartphones/
${Zip Code}    35222
${EMAIL}    1029Villanueva@gmail.com
${PASSWORD}    VerizonPassTest1029
${ANSWER}    2022

*** Test Cases ***
Buy a Smartphone with a new customer
    Enter to Verizon Shop Web
    Select a smartphone to buy
    Purchase as Existing Customer

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

Purchase as Existing Customer
    Click Button    xpath=//*[@id="flow-overlay"]/div[3]/div/div/div/div/span/div[2]/div/div[2]/button
    Sleep    2s
    Sign In Existing Customer

Sign In Existing Customer
    Wait Until Page Contains Element    xpath=//*[@id="mainPage"]/div/div/div/div/div/div[1]/div[1]/h1
    Input Text    xpath=//*[@id="IDToken1"]    ${EMAIL}
    Sleep    1s
    Click Button    xpath=//*[@id="continueBtn"]
    Wait Until Element Is Visible    xpath=//*[@id="IDToken2"]
    Input Password    xpath=//*[@id="IDToken2"]    ${PASSWORD}
    Sleep    1s
    Click Button    xpath=//*[@id="continueBtn"]
    Wait Until Element Is Visible    xpath=//*[@id="continueBtn"]
    Click Button    xpath=//*[@id="continueBtn"]
    Wait Until Element Is Visible    xpath=//*[@id="IDToken2"]
    Input Password    xpath=//*[@id="IDToken2"]    ${ANSWER}
    Sleep    1s
    Click Button    xpath=//*[@id="continueBtn"]
    Page Should Not Contain Button    xpath=//*[@id="continueBtn"]