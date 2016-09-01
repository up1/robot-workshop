*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***

*** Testcases ***
ค้นหา robot framework
    [Documentation]    test case 1
    open google
    key robot framework
    found robotframework.org

ค้นหา robot framework 2
    [Documentation]    test case 2
    open google
    key robot framework
    found robotframework.org

*** Keywords ***
found robotframework.org
    Wait Until Page Contains    robotframework.org

key robot framework
    Input Text    name=q    robot framework
    Click Button    name=btnG

open google
    Open Browser    http://www.google.com
