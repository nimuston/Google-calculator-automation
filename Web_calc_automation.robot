*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource    calc_resources.robot
Test Setup  Set Selenium Speed  0.5
Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
TC001 - Open WebBrowser and google
    open browser to google
    Accept google agreement policy

TC002 - Search for calculator
    find search field and using to search calculator

TC003 - Simple calculation like 1 + 2 = 3
    click calculator button 1
    click calculator button +
    click calculator button 2
    click calculator button =
    Verify calculated total  3

TC004 - Clear calculator
    clear calculator

TC005 - Second simple calcuation 8 - 2 = 6
    click calculator button 8
    Click calculator button -
    Click calculator button 2
    Click calculator button =
    Verify calculated total  6

TC006 - Third simple calcuation 9 - 5 = 4
    click calculator button 9
    Click calculator button -
    Click calculator button 5
    Click calculator button =
    Verify calculated total  4

TC007 - Clear calculator
    Clear calculator

TC008 - Close browser
    close all browsers
