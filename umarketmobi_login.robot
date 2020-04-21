*** Settings ***
Documentation  Andres Villas - Umarket Mobi Website Test Case

Library  Selenium2Library
Library     OperatingSystem



*** Variables ***
${browser}  Chrome
${URL}  https://www.umarket.mobi/?siteRevision=138



*** Test Cases ***

OpenPage
    open browser    ${URL}     ${browser}
    maximize browser window
    set selenium speed  2

TitleTest
    TitleofPage


Como_Funcionalink
    link_comofunciona_botao


Botao Planos
    link_botao_Planos


Botao azul Nossos Planos
    link_botao_azul_Nossos_planos


Plano Mensal e Plano Anual
    botao_plano_mensal_e_plano_anual

Botao Cadastro
    fazer_cadastro_botao

Dados do usuario correto
    cadastro dos dados usuario correto


*** Keywords ***

TitleofPage
    title should be     UMarket

Link_ComoFunciona_botao
    sleep  2
    click element  xpath://p[@id='comp-ir9le55m1label']
    sleep  1
    element should be visible  xpath://*[@id="comp-irte5gp9menuContainer"]/li[2]

link_botao_Planos
    sleep  4
    click element  xpath://p[@id='comp-ir9le55m2label']
    sleep  5
    element text should be  xpath://h4[@class='font_4']     Nossos planos


link_botao_azul_Nossos_planos

    sleep  5
    # got to Inicio button
    click element   xpath://p[@id='comp-ir9le55m0label']
    sleep  6
    click element  xpath://p[@id='comp-ir9le55m1label']
    sleep  6
    click element   xpath://a[@id='comp-k91zcd66link']
    sleep  10
    element text should be  xpath://h4[@class='font_4']     Nossos planos
    sleep   4

botao_plano_mensal_e_plano_anual

    sleep  3
    click element  xpath://div[@class='style-k94g1bzl_innerLabel']
    sleep  3
    # botao inicio
    click element   xpath://p[@id='comp-ir9le55m0label']
    sleep  6


Fazer_Cadastro_Botao

    sleep  2
    # botao cadastro azul
    click element  xpath://a[@id='comp-k926fxxllink']


Cadastro dos dados usuario correto
    sleep  4
    # nome do usuario
    input text  xpath://input[@id='comp-k8x5vaz9input']     Sophia Souza Santos de Pinho
    sleep  1
    # telefone number
    input text  xpath://input[@id='comp-k8x5vhg1input']     +8618038196666
    sleep  1
    # email do usuario
    input text  xpath://input[@id='comp-jxad0a4einput']     sophia_pinho@gmail.com
    sleep  1
    # NOme do seu negocio
    input text  xpath://input[@id='comp-k8x5vvl1input']     SP System Automation
    sleep  1
    # clique botao enviar
    click button  id:comp-jxad0a5mlink




