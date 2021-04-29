*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LoginURL}  https://admin-demo.nopcommerce.com/
${Browser}   chrome

*** Keywords ***
Open my browser
    open browser   ${LoginURL}  ${Browser}
    maximize browser window
close browsers
    close all browsers

Open Login Page
    go to ${LoginURL}

Input username
    [Arguments]     ${username}
    input text  id:Email    ${username}

Input pwd
    [Arguments]     ${password}
    input text  id:Password    ${password}

click login button
    click element  xpath://input[@class='button-1 login-button']

click logout link
    click link  Logout
Error message should be visible
    Page should contain  Login was unsuccessful
Dashboard Page should be visible
    Page should contain  Dashboard
