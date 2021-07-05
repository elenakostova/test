*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Product list.robot
Resource          ../locators/Checkout.robot

*** Keywords ***
Proceed to checkout from Shopping cart
    Click Element    ${proceedToCheckoutSummary}
    Wait Until Page Contains    Addresses
    Page Should Contain    Addresses
    Click Element    ${proceedToCheckoutAdresses}
    Wait Until Page Contains    Shipping
    Page Should Contain    Shipping
    Wait Until Element Contains    ${termsOfServiceCheckbox}    Terms of service
    Select Checkbox    1
    Click Element    ${proceedToCheckoutShipping}
    Page Should Contain    Please choose your payment method

Pay by bank wire
    Wait Until Element Is Visible    ${payByWireBtn}
    Click Element    ${payByWireBtn}
    Page Should Contain    Order summary
    Wait Until Element Is Visible    ${iConfirmMyOrderBtn}
    Click Element    ${iConfirmMyOrderBtn}
    Page Should Contain    Order confirmation

Pay by check
    Wait Until Element Is Visible    ${payByCheck}
    Click Element    ${payByCheck}
    Page Should Contain    Order summary
    Wait Until Element Is Visible    ${iConfirmMyOrderBtn}
    Click Element    ${iConfirmMyOrderBtn}
    Page Should Contain    Your order on My Store is complete.

Sign in to proceed checkout and buy a product
    Page Should Contain    Shopping-cart summary
    Wait Until Element Is Visible    ${proceedToCheckoutSummary}
    Click Element    ${proceedToCheckoutSummary}
    Page Should Contain    Authentication
    Wait Until Element Is Visible    ${emailField}
    Log    Guest must be log in to buy a product
