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
    find search field and use to search calculator

TC003 - First plus calculation 1 + 2 = 3
    click calculator button 1
    click calculator button +
    click calculator button 2
    click calculator button =
    Verify calculated total  3

TC004 - Second plus calculation 10 + 5 + 23 = 38
    Click calculator button 1
    Click calculator button 0
    Click calculator button +
    Click calculator button 5
    Click calculator button +
    Click calculator button 2
    Click calculator button 3
    Click calculator button =
    Verify calculated total  38

TC005 - Clear calculator
    clear calculator

TC006 - First minus calculation 8 - 2 = 6
    click calculator button 8
    Click calculator button -
    Click calculator button 2
    Click calculator button =
    Verify calculated total  6

TC007 - Second minus calculation 9 - 5 = 4
    click calculator button 9
    Click calculator button -
    Click calculator button 5
    Click calculator button =
    Verify calculated total  4

TC008 - First multiply calculation 9 * 5 = 45
    click calculator button 9
    Click calculator button *
    Click calculator button 5
    Click calculator button =
    Verify calculated total  45
	
TC009 - First division calculation 9 / 3 = 3
    click calculator button 9
    Click calculator button /
    Click calculator button 3
    Click calculator button =
    Verify calculated total  3

TC010 - Clear calculator
    Clear calculator

TC011 - Close browser
    close all browsers
