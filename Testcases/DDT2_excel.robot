*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/login_resource.robot
Library     Datadriver  ../TestData/Data.xlsx   sheet_name=Sheet1
Suite Setup    Open my browser
Suite Teardown    close browsers
Test Template   Invalid login



*** Test Cases ***
LoginTestwithExcel using ${username} and  ${password}





*** Keywords ***
Invalid login
    [Arguments]     ${username}  ${password}
    Input username      ${username}
    Input pwd           ${password}
    click login button
    Error message should be visible
