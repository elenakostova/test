*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${shoppingCartQuantityField}    //*[@class="cart_quantity_input form-control grey"]
${addToCartButton}    //*[@id="add_to_cart"]/button
${summaryCart}    //*[@class="step_current \ first"]
${cart}           //*[@class="shopping_cart"]
${cartQuantity}    //*[@class="shopping_cart"]/a/span[1]
${iconTrash}      //*[@class="cart_quantity_delete"]
${emptyCartTitle}    //*[@id="center_column"]/p
