*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot

*** Keywords ***
Open Website
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window

Click on Sign in link
    Wait Until Element Is Visible    ${loginLink}
    Click Element    ${loginLink}
    Wait Until Page Contains    Authentication

My account link
    Wait Until Element Is Visible    ${myAccountLink}
    Click Element    ${myAccountLink}
    Wait Until Page Contains    My account

Click on Women link
    Wait Until Element Is Visible    ${womenLink}
    Click Element    ${womenLink}
    Wait Until Page Contains    Subcategories
