*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SigninKeywords.robot
Variables    decode.py

*** Variables ***
${browser}  chrome
${siteurl}      https://demo.guru99.com/test/newtours/index.php
${username}     tutorials
#${password}     tutorials

*** Test Cases ***
Sign in Test
    Open My Browser     ${siteurl}  ${browser}
    Log To Console    ${decMessage}
    Test_Username    ${username}
    Test_Password    ${decMessage}
    Click_button
    Verify Page
    Close My Browser