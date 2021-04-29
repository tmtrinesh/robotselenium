*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/login_resource.robot
Suite Setup     Open my browser
Suite Teardown   close browsers
Test Template    Invalid login

*** Test Cases ***        username              password
Right user empty pwd    admin@yourstore.com   ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user Right pwd    adm@yourstore.com     admin
Wrong user Empty pwd    adm@yourstore.com     ${EMPTY}
Wrong user Wrong pwd    adm@yourstore.com      xyz

*** Keywords ***
Invalid login
    [Arguments]     ${username}  ${password}
    Input username      ${username}
    Input pwd          ${password}
    click login button
    Error message should be visible
