*** Settings ***
Suite Setup       Open Website
Suite Teardown
Library           SeleniumLibrary
Resource          ../locators/Common.robot
Resource          ../keywords/Common.robot
Resource          ../keywords/Product lIst.robot
Resource          ../locators/Product list.robot
Resource          ../locators/Checkout.robot
Resource          ../keywords/Checkout.robot
Resource          ../locators/ShoppingCart.robot
Resource          ../keywords/ShoppingCart.robot

*** Variables ***

*** Test Cases ***
Add product to cart
    [Documentation]    Verify that existing user can add product to the cart
    Sign in as existing user
    Click on Women link
    Open product    ${blouseImg}    ${blouseMoreBtn}    Blouse
    Choose product detail    1    1    ${colorWhite}
    Add to cart
    Sign out link

Remove product from Cart by entering 0 in the quantity field
    [Documentation]    Verify that user can remove product from the shopping cart by entering 0 in the quantity field
    Sign in as existing user
    Click on Women link
    Open product    ${printedDressImg}    ${printedDressMoreBtn}    Printed Dress
    Choose product detail    1    2    ${colorOrange}
    Add to cart
    Remove product from quantity field from cart
    Sign out link

Remove a products from the cart
    Sign in as existing user
    Click on Women link
    Add two products to cart
    Emptying Cart
