*** Settings ***

Library     Selenium2Library

*** Variables ***

${browser}      Chrome
${login URL}    https://demo.nopcommerce.com


*** Test Cases ***


Input box and clear
  open browser               ${login URL}     ${browser}
  Maximize Browser Window
  Sleep    5
  Click Link    //a[@class='ico-login']
  ${"email_txt"}    Set Variable    id:Email
  Sleep    10
  input text    ${"email_txt"}   vinicius.mpinho@gmail.com

  Sleep    5
  Clear Element Text    ${"email_txt"}




*** Keywords ***
