*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://automationpractice.com/index.php
${browser}        chrome
${loginLink}      //*[@class="login"]
${signOutLink}    //*[@class="logout"]
${womenLink}      //*[@id="block_top_menu"]/ul/li[1]/a
