*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${addWishlistLink}    //*[@id="wishlist_btton"]
${wishlistPopupMessage}    //*[@class="fancybox-inner"]
${wishlistPopupClose}    //*[@class="fancybox-item fancybox-close"]
${wishlistPage}    //*[@class="header_user_info"]
${accountWishlistBtn}    //*[@class="lnk_wishlist"]
${myWishlist}     //*[@id="mywishlist"]
${myWishlistLink}    //html/body/div/div[2]/div/div[3]/div[2]/div/div[1]/table/tbody/tr/td[5]/a
${wishlistOrderDetail}    //*[@id="block-order-detail"]
${wishlistQuantityField}    //*[@class="form-control grey"]
${wishlistSaveBtn}    //*[@id="wlp_3_13"]/div/div[2]/div/div[2]/a
