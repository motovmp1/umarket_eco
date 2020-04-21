*** Settings ***
Documentation  Andres Villas - Umarket Mobi Website Test Case

Library  Selenium2Library
Library     OperatingSystem



*** Variables ***
# chrome webdriver para aceso ao gmail
${browser}  Firefox
${URL}  https://www.umarket.mobi/?siteRevision=138



*** Test Cases ***

OpenPage
    open browser    ${URL}     ${browser}
    maximize browser window
    set selenium speed  1

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

Mensagem do cadastro sucesso
    cadastro com sucesso


Login Facebook webpage
    login facebook page


Login to Tiwtter page
    login to twitter

Login to Instagram
    login to instagram

#Login to LinkedIN page
#    login_linked_page


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
    sleep  7
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

Cadastro com sucesso
    sleep       5
    element text should be  xpath://*[@id="comp-jxad0a66"]/span/p/span/span/span     Obrigado por se cadastrar!


Login Facebook page
    sleep   3
    click element   xpath://img[@id='comp-iruti9mw0imageimageimage']
    sleep   10
    Select Window                  title=Wix - Home | Facebook
    sleep   5
    ${title}                     Get Title
    Log              ${title}
    title should be     Wix - Home | Facebook
    input text   xpath://table//input[@id='email']      facebook
    sleep   10
    Select Window                  title=UMarket

Login to Twitter
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw1imageimageimage']
    sleep   10
    Select Window                  title=Wix (@Wix) / Twitter
    ${title}                       Get Title
    Log                 ${title}
    title should be     Wix (@Wix) / Twitter
    sleep   10
    Select Window                  title=UMarket


Login to Instagram
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw2imageimageimage']
    sleep   10
    Select Window                  title=Wix (@wix) • Instagram photos and videos
    ${title}                       Get Title
    Log                 ${title}
    title should be     Wix (@wix) • Instagram photos and videos
    sleep   10
    Select Window                  title=UMarket



login_linked_page
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw3imageimageimage']
    sleep   10
    Select Window                  title=Wix.com | LinkedIn
    ${title}                       Get Title
    Log                 ${title}
    title should be    Wix.com | LinkedIn
    sleep   10
    Select Window                  title=UMarket
