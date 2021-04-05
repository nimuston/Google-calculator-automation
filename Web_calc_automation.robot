*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource    calc_resources.robot
Test Setup  Set Selenium Speed  0.5
Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
TC001 - Open WebBrowser and google
    open browser to google

TC002 - Agree google policy
    click element  //*[@id="zV9nZe"]/div

TC002 - Search for calculator
    find search field and using to search calculator

TC003 - Simple calculation like 1 + 2 = 3
    click calculator button 1
    click calculator button +
    click calculator button 2
    click calculator button =
    ${result} =    Get Text  //*[@id="cwos"]
    Should Be Equal    ${result}    3

TC004 - Clear calculator
    clear calculator

TC0xx - Close browser
    close all browsers
