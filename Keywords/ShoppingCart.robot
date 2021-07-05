*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Product list.robot
Resource          ../keywords/Checkout.robot
Resource          ../locators/ShoppingCart.robot
Resource          ../keywords/Product list.robot

*** Keywords ***
Remove product from quantity field from cart
    Wait Until Element Is Visible    ${shoppingCartQuantityField}
    Clear Element Text    ${shoppingCartQuantityField}
    Input Text    ${shoppingCartQuantityField}    0
    Page Should Contain    Your shopping cart is empty.

Add to cart
    Click Element    ${addToCartButton}
    Wait Until Element Contains    ${proceedToCheckoutButton}    Proceed to checkout
    Click Element    ${proceedToCheckoutButton}
    Page Should Contain    Shopping-cart summary

Add two products to cart
    Open product    ${printedDressImg}    ${printedDressMoreBtn}    Printed Dress
    Add to cart
    Click on Women link
    Open product    ${blouseImg}    ${blouseMoreBtn}    Blouse
    Add to cart

Clear Shopping Cart
    Click Element    ${cart}
    Wait Until Element Is Visible    ${summaryCart}
    Wait Until Page Contains    Shopping-cart summary
    ${cart_qty}    Get Text    ${cartQuantity}
    FOR    ${i}    IN RANGE    0    ${cart_qty}
        IF    ${cart_qty}>1
        Click Link    ${iconTrash}
        Sleep    5
    END
    END
    Wait Until Element Is Visible    ${emptyCartTitle}
    Wait Until Element Contains    ${emptyCartTitle}    Your shopping cart is empty.
    Page Should Contain    Your shopping cart is empty.

Emptying Cart
    ${cart_qty}    Get Text    ${cartQuantity}
    Log    ${cart_qty}
    IF    ${cart_qty}>0
    Clear Shopping Cart
    END
