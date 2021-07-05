*** Settings ***
Suite Setup       Open Website
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot

*** Test Cases ***
Sign in Valid Credentials
    [Documentation]    Verify that user can succesfully Sign in with entering valid credentials in the email and password fields
    Sign in as existing user
    Sign out link

Sign in with invalid email
    [Documentation]    Verify that user can not Sign in with entering invalid email in the email field
    Sign in with Invalid email
