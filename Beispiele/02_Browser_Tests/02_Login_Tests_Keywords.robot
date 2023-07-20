*** Settings ***
Library     Browser


*** Test Cases ***
Login with correct data
    Open CarConfigurator
    Type Username    buch
    Type Password    keyword-driven
    Click Login Button
    Verify Page    CarConfigurator    list

Login user with functional keywords
    Open CarConfigurator
    Login User    buch    keyword-driven
    Verify Page    CarConfigurator    list

Login user with business keywords
    Start CarConfig as Leser
    Verify Page    CarConfigurator    list


*** Keywords ***
Start CarConfig as Leser
    [Tags]    business
    Open CarConfigurator
    Login User    buch    keyword-driven

Login User
    [Tags]    functional
    [Arguments]    ${user}    ${pwd}
    Type Username    ${user}
    Type Password    ${pwd}
    Click Login Button

Type Username
    [Documentation]    Types the given \${username} into the username input element.
    [Tags]    technical
    [Arguments]    ${username}
    Type Text    id=input_username    ${username}

Type Password
    [Documentation]    Types the given \${password} into the password input element.
    [Arguments]    ${password}
    Type Text    id=input_password    ${password}

Click Login Button
    Click    id=button_login

Verify Page
    [Arguments]    ${Title}    ${url}
    Get Title    ==    ${Title}
    Get Url    $=    ${url}

Open CarConfigurator
    New Browser    headless=False
    New Context
    New Page    http://car.keyword-driven.de

