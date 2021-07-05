*** Settings ***
Suite Setup       Open Website
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../locators/Common.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Search.robot
Resource          ../Keywords/Search.robot
Resource          ../keywords/Product lIst.robot
Resource          ../locators/Product list.robot
Resource          ../locators/Checkout.robot
Resource          ../keywords/Checkout.robot
Resource          ../keywords/Account.robot
Resource          ../locators/Account.robot
Resource          ../keywords/Account.robot
Resource          ../locators/Account.robot
Resource          ../locators/ShoppingCart.robot
Resource          ../keywords/ShoppingCart.robot

*** Variables ***

*** Test Cases ***
Verify that a guest cannot checkout and buy a product without log in
    [Documentation]    Verify that a guest cannot checkout and buy a product without log in. Guest must be log in to buy a product
    Click on Women link
    Open product    ${blouseImg}    ${blouseMoreBtn}    Blouse
    Choose product detail    1    1    ${colorBlack}
    Add to cart
    Sign in to proceed checkout and buy a product

Buy a product with pay by bank wire method
    [Documentation]    Verify that existing user can succesfully buy a product and pay with the method pay by bank wire.
    Sign in as existing user
    Click on Women link
    Open product    ${printedDressImg}    ${printedDressMoreBtn}    Printed Dress
    Choose product detail    1    3    ${colorOrange}
    Add to cart
    Proceed to checkout from Shopping cart
    Pay by bank wire
    Sign out link

Buy a products with pay by check
    [Documentation]    Verify that existing user can add and buy two products with the pay by check method
    Sign in as existing user
    Click on Women link
    Add two products to cart
    Proceed to checkout from Shopping cart
    Pay by check
    Sign out link
