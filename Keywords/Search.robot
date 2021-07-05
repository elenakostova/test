*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Common.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Search.robot
Resource          ../Keywords/Search.robot

*** Keywords ***
Input product in search field
    [Arguments]    ${text_argument}
    Wait Until Element Is Visible    ${searchField}
    Click Element    ${searchField}
    Input Text    ${searchField}    ${text_argument}

Click on search button
    [Arguments]    ${logtext_argument}
    Click Element    ${searchBtn}
    Wait Until Element Is Visible    ${searchResultsPage}
    Log    ${logtext_argument}
