*** Settings ***
Suite Setup       Open Website
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../locators/Common.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Search.robot
Resource          ../Keywords/Search.robot

*** Test Cases ***
Search for existing product
    [Documentation]    Verify that when the user enters an existing product in the search field the product appears on the page
    Input product in search field    Blouse
    Click on search button    Open search page with results

Test if search works for less then 3 character keyword
    Input product in search field    Pr
    Click on search button    No results were found for your search "Pr"
