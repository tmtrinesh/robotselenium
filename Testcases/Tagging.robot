*** Settings ***



*** Test Cases ***
TC1 User registration test
    [Tags]  Sanity
    log to console  This is User reg test
    log to console  User reg test is over
TC2 Login Test
    [Tags]  Regression
    log to console  This is login test
    log to console  login test is over
TC3 Change user setting Test
    [Tags]  Regression
    log to console  This is changing user setting test
    log to console  changing user setting test  is over
TC4 Logout Test
    [Tags]  Sanity
    log to console  This is logout test
    log to console  logout test is over