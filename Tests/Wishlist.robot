*** Settings ***
Suite Setup       Open Website
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot
Resource          ../keywords/Wishlist.robot
Resource          ../locators/Wishlist.robot
Resource          ../keywords/Product list.robot
Resource          ../locators/Product list.robot

*** Variables ***

*** Test Cases ***
Verify that product is added to wishlist page
    [Documentation]    Verify that existing user can succesfully add product \ to the wishlist.
    Sign in as existing user
    Click on Women link
    Open product    ${printedDressImg}    ${printedDressMoreBtn}    Printed Dress
    Add product to the Wishlist
    Sign out link

Verify that it is possible to change the quantity of the product in wishlist
    [Documentation]    Verify that existing user can succesfully change the quantity of the product in wishlist.
    Sign in as existing user
    My account link
    My wishlist page
    Change quantity of the product from the wishlist
