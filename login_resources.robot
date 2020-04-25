*** Settings ***

Library         SeleniumLibrary



*** Variables ***

${login URL}    https://www.umarket.mobi/?siteRevision=138
${browser}      Chrome


*** Keywords ***

Open My Browser

    open browser               ${login URL}     ${browser}
    Maximize Browser Window
    sleep                      10
    # botao cadastro azul
    click element              xpath://a[@id='comp-k926fxxllink']
    sleep                      5




Close Browser
    sleep                      10
    close all browsers
    

Open Login
    go to                      ${login URL}
    sleep                      5


Input name_user
    # nome completo do usuario
    [Arguments]                ${username}
    Sleep    3
    Input Text      id:comp-k8x5vaz9input               ${username}


    sleep                      1

Input phone number
    # telefone completo do usuario
    [Arguments]                ${phonenumber}
    Sleep    3
    input text                 xpath://input[@id='comp-k8x5vhg1input']    ${phonenumber}
    sleep                      1

Input Email
    # email do usuario
    [Arguments]                ${emailuser}
    Sleep    4
    input text                 xpath://input[@id='comp-jxad0a4einput']    ${emailuser}
    sleep                      1

Input company
    # Nome do seu negocio
    [Arguments]                ${companyname}
    Sleep    4
    input text                 xpath://input[@id='comp-k8x5vvl1input']    ${companyname}
    sleep                      1

click login button

    # clique botao enviar
    click button               id:comp-jxad0a5mlink
    Sleep    4
    # limpa campo nome 
    ${"email_txt"}    Set Variable    id:comp-k8x5vaz9input
    Press Key     ${"email_txt"}    \\08
    Press Key     ${"email_txt"}    \\08
    Press Key     ${"email_txt"}    \\08
    Press Key     ${"email_txt"}    \\08
    Press Key     ${"email_txt"}    \\08
    Sleep    3