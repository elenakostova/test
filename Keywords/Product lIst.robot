*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/Account.robot
Resource          ../locators/Common.robot
Resource          ../keywords/Account.robot
Resource          ../keywords/Common.robot
Resource          ../locators/Product list.robot
Resource          ../keywords/Checkout.robot

*** Keywords ***
Open product
    [Arguments]    ${productImg_atributes}    ${imgMoreBtn_atributes}    ${imgText_atributes}
    Scroll Element Into View    ${productImg_atributes}
    Mouse Down On Link    ${imgMoreBtn_atributes}
    Click Element    ${imgMoreBtn_atributes}
    Wait Until Page Contains    ${imgText_atributes}

Choose product detail
    [Arguments]    ${quantityField_arguments}    ${sizeFieldValue_arguments}    ${colorValue_arguments}
    Clear Element Text    ${quantityField}
    Input Text    ${quantityField}    ${quantityField_arguments}
    Click Element    ${sizeDropDownList}
    Select From List By Value    ${sizeDropDownList}    ${sizeFieldValue_arguments}
    Click Element    ${colorValue_arguments}
