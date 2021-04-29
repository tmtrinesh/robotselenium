*** Settings ***

Suite Setup  log to console   opening browser
Suite Teardown   log to console  Closing browser

Test Setup   log to console  Login  to application
Test Teardown   log to console  Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console  This is prepaid recharge test
TC2 Postpaid Recharge
    log to console  This is postpaid recharge test
TC3 Search
    log to console  This is search test
TC4 Advanced Search
     log to console  This is Advanced search test