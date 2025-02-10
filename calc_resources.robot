*** Settings ***
Documentation    Simple example using SeleniumLibrary - Resources
Library  SeleniumLibrary

*** Variables ***
${url}    http://www.google.fi
${Browser}      Chrome

*** Keywords ***
Open browser to google
    open browser  ${url}    ${browser}  options=add_argument("--disable-blink-features=AutomationControlled"); add_argument("--log-level=1")
    title should be  Google

Find search field and use to search calculator
    input text  name:q  Calculator
    click element  name:btnK

Click calculator button 0
    click element  css:[jsname="bkEvMb"]

Click calculator button 1
    click element  css:[jsname="N10B9"]
    
Click calculator button 2
    click element  css:[jsname="lVjWed"]

Click calculator button 3
    click element  css:[jsname="KN1kY"]

Click calculator button 4
    click element  css:[jsname="xAP7E"]

Click calculator button 5
    click element  css:[jsname="Ax5wH"]

Click calculator button 6
    click element  css:[jsname="abcgof"]

Click calculator button 7
    click element  css:[jsname="rk7bOd"]

Click calculator button 8
    click element  css:[jsname="T7PMFe"]

Click calculator button 9
    click element  css:[jsname="XoxYJ"]

Click calculator button -
    click element  css:[jsname="pPHzQc"]

Click calculator button +
    click element  css:[jsname="XSr6wc"]
	
Click calculator button *
	click element  css:[jsname="YovRWb"]
	
Click calculator button /
	click element  css:[jsname="WxTTNd"]

Click calculator button =
    click element  css:[jsname="Pt8tGc"]

Clear calculator
    click element  css:[jsname="SLn8gc"]

Accept google agreement policy
    click element  //*[@id="L2AGLb"]/div

Verify calculated total
    [Arguments]  ${totalamount}
    ${result} =    Get Text  //*[@id="cwos"]
    should be equal  ${totalamount}  ${result}

Recovery from test case failure
    close browser
    open browser  ${url}    ${browser}  options=add_argument("--disable-blink-features=AutomationControlled"); add_argument("--log-level=1")
    title should be  Google
    click element  //*[@id="L2AGLb"]/div
    input text  name:q  Calculator
    click element  name:btnK