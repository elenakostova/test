*** Settings ***
Library           SeleniumLibrary
Resource          ../Locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Common.robot

*** Keywords ***
Input Credentials
    [Arguments]    ${email_argument}    ${password_argument}
    Wait Until Element Is Visible    ${emailField}
    Input Text    ${emailField}    ${email_argument}
    Input Password    ${passwordField}    ${password_argument}

Click on Sign in button
    Click Element    ${signInButton}
    Wait Until Page Contains    My account
    Sleep    2
    Page Should Contain    My account

Invalid credentials
    Input Credentials    test2@.com    123abc

Sign in as existing user
    Click on Sign in link
    Input Credentials    test1@yahoo.com    123abc
    Click on Sign in button

Sign in with Invalid email
    Click on Sign in link
    Input Credentials    test2@.com    123abc
    Wait Until Element Is Visible    ${signInButton}
    Click Element    ${signInButton}
    Page Should Contain    Invalid email address.

Sign out link
    Wait Until Element Is Visible    ${signOutLink}
    Click Element    ${signOutLink}
