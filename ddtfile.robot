*** Settings ***

Library                             Selenium2Library
Resource                            /home/elsys/Desktop/Teste/umarket_ecom/umarket_ecom/login_resources.robot
Library                             Collections
Suite Setup                         Open My Browser
Suite Teardown                      Close Browser
Test Template                       Invalid login

*** Test Cases ***

#username     #phonenumber     #emailuser     #companyname


w_user_w_phone_w_email_w_company        vini       888     vini         elss1
w_user_w1_phone_w1_email_w_company      vini2    555    vini2    elss2
#w_user_w2_phone_w2_email_w_company    vini2    666    vini3    elss3
#w_user_w3_phone_w3_email_w_company    vini2    444    vini3    elss4
#w_user_w4_phone_w3_email_w_company    vini2    666    vini3    elss5


*** Keywords ***

Invalid login
    [Arguments]             ${username}       ${phonenumber}    ${emailuser}    ${companyname}
    Input name_user         ${username}
    Input phone number      ${phonenumber}
    Input Email             ${emailuser}
    Input company           ${companyname}
    click login button
