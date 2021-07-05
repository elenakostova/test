*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${proceedToCheckout}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
${proceedToCheckoutButton}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
${proceedToCheckoutSummary}    //*[@id="center_column"]/p[2]/a[1]
${proceedToCheckoutAdresses}    //*[@id="center_column"]/form/p/button
${termsOfServiceCheckbox}    //*[@id="form"]/div/p[1]
${proceedToCheckoutShipping}    //*[@id="form"]/p/button
${payByWireBtn}    //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
${payByCheck}     //*[@id="HOOK_PAYMENT"]/div[2]/div/p/a
${iConfirmMyOrderBtn}    //*[@id="cart_navigation"]/button
${proceedToCheckout}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
${proceedToCheckoutButton}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
