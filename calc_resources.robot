*** Settings ***
Documentation    Simple example using SeleniumLibrary - Resources
Library  SeleniumLibrary

*** Variables ***
${url}    http://www.google.fi
${Browser}      Chrome

*** Keywords ***
Open browser to google
    open browser  ${url}    ${browser}
    title should be  Google

Find search field and using to search calculator
    input text  name:q  Calculator
    click element  name:btnK

Click calculator button 1
    click element  //*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[1]/div/div

Click calculator button 2
    click element  //*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div

Click calculator button +
    click element  //*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[4]/div/div

Click calculator button =
    click element  //*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div

Clear calculator
    click element  //*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[1]/td[4]/div/div[1]

Recovery from test case failure
    close browser
    open browser  ${url}    ${browser}
    title should be  Google
    click element  //*[@id="zV9nZe"]/div
    input text  name:q  Calculator
    click element  name:btnK