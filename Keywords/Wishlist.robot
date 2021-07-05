*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Wishlist.robot

*** Keywords ***
Add product to wishlist
    Wait Until Element Is Visible    ${addWishlistLink}
    Click Element    ${addWishlistLink}
    Wait Until Element Contains    ${wishlistPopupMessage}    Added to your wishlist.
    Wait Until Page Contains Element    ${wishlistPopupClose}
    Click Element    ${wishlistPopupClose}

My wishlist page
    Click Element    ${accountWishlistBtn}
    Wait Until Element Is Visible    ${myWishlist}
    Click Element    ${myWishlistLink}
    Wait Until Page Contains Element    ${wishlistOrderDetail}
    Log    Product is on the wishlist page

Add product to the Wishlist
    Add product to wishlist
    My account link
    My wishlist page

Change quantity of the product from the wishlist
    Wait Until Element Is Visible    ${wishlistQuantityField}
    Input Text    ${wishlistQuantityField}    3
    Wait Until Element Is Visible    ${wishlistSaveBtn}
    Click Element    ${wishlistSaveBtn}
    Log    Quantity of the product is succesfully changed
