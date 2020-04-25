*** Settings ***
Documentation  Andres Villas - Umarket Mobi Website Test Case

Library  Selenium2Library
Library     OperatingSystem



*** Variables ***
# chrome webdriver para acesso ao gmail
${browser}  Chrome
${URL}  https://www.umarket.mobi/?siteRevision=138



*** Test Cases ***

OpenPage
    open browser    ${URL}     ${browser}
    maximize browser window
    set selenium speed  0.5
    sleep  15
    go to   ${URL}
    sleep   10

Login sem senha_empty
    login sem digitar senha


Login com senha errada
    login com senha incorreta

login com a senha correta
    Login digitando a senha correta


TitleTest
    TitleofPage


Como_Funcionalink
    link_comofunciona_botao


Botao Planos
    link_botao_Planos


Botao azul Nossos Planos
    link_botao_azul_Nossos_planos


Valor dos planos Anos
    Valor_do_plano_anual


contrata plano Lite anual empty
   contratar planos dentro de anual lite vazio_empty


Contratar plano anual Lite correto
    contratar planos dentro de anual lite correto




Plano Mensal e Plano Anual
    botao_plano_mensal_e_plano_anual


Valor dos planos Mensal
    valor_do_plano_mensal


Botao Cadastro
    fazer_cadastro_botao

Dados do usuario correto
    cadastro dos dados usuario correto

Mensagem do cadastro sucesso
    cadastro com sucesso


Termos de uso link e titulo
    Verificar_link_termos_de_uso

Login Facebook webpage
    login facebook page


Login to Tiwtter page
    login to twitter

Login to Instagram
    login to instagram

Login to LinkedIN page
    login_linked_page


*** Keywords ***

login sem digitar senha
     input text      id:enterPasswordDialogpasswordInputinput        ${EMPTY}
     sleep   1
     click button    id:enterPasswordDialogokButton
     sleep   1
     element text should be     xpath://p[@id='enterPasswordDialogpasswordInputerrorMessage']       Certifique-se de digitar uma senha.
     sleep  10


Login com senha incorreta

      input text      id:enterPasswordDialogpasswordInputinput        UMark
      sleep   1
      click button    id:enterPasswordDialogokButton
      sleep  1
      element text should be     xpath://p[@id='enterPasswordDialogerrMsg']       Por favor, insira a senha correta
      sleep  10


Login digitando a senha correta

     # limpa campo nome
     ${"senha_txt"}    Set Variable    id:enterPasswordDialogpasswordInputinput
     Press Key     ${"senha_txt"}    \\08
     Press Key     ${"senha_txt"}    \\08
     Press Key     ${"senha_txt"}    \\08
     Press Key     ${"senha_txt"}    \\08
     Press Key     ${"senha_txt"}    \\08
     Press Key     ${"senha_txt"}    \\08

     Sleep    3

     input text      id:enterPasswordDialogpasswordInputinput        UMarket202004
     sleep   1
     click button    id:enterPasswordDialogokButton
     sleep  15
     element text should be     xpath://span[contains(text(),'Esteja Sempre')]       Esteja Sempre
     sleep  5



TitleofPage
    title should be     UMarket

Link_ComoFunciona_botao
    sleep  2
    click element  xpath://p[@id='comp-ir9le55m1label']
    sleep  1
    element should be visible  xpath://*[@id="comp-irte5gp9menuContainer"]/li[2]

link_botao_Planos
    sleep  6
    click element  xpath://p[@id='comp-ir9le55m2label']
    sleep  8
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


Valor_do_plano_anual
    # plano lite
    element text should be      xpath://span[contains(text(),'76,90')]      76,90
    log                         "Plano Lite 76.90"

     # plano business
    element text should be      xpath://span[contains(text(),'179,90')]      179,90
    log                         "Plano Business 179.90"

      # plano ilimitado
    element text should be      xpath://span[contains(text(),'508,90')]      508,90
    log                         "Plano Ilimitado 508.90"


# Abre contratar dentro do lite, fecha e abre novamente
contratar planos dentro de anual lite vazio_empty
    sleep   2
    # click to open
    click element       xpath://span[@id='comp-k94f49ka__item1label']
    log                 "click plano lite anual 1 tentativa"
    sleep  3
    # click to close window
    click element       xpath://div[@id='comp-k9d67lfr']//*[local-name()='svg']
    log                 "fecha apertando x na tela de contratar"
    sleep  1
    # click to open
    click element       xpath://span[@id='comp-k94f49ka__item1label']
    sleep  3
    input text          xpath://input[@id='comp-k9d67s92input']     ${EMPTY}
    sleep   1
    input text          xpath://input[@id='comp-k9d7moufinput']     ${EMPTY}
    sleep   1
    input text          xpath://input[@id='comp-k9d67s9ainput']     ${EMPTY}
    element text should be      xpath://span[@class='color_15']       Nao pode ser vazio
    sleep   1
    Select Window                  title=UMarket




# Abre contratar dentro do lite, fecha e abre novamente
contratar planos dentro de anual lite correto
    # este trecho vai ser removido quando arrumar pagina ***  atencao!
    click element       xpath://div[@id='comp-k9d67lfr']//*[local-name()='svg']
    log                 "fecha apertando x na tela de contratar"

    sleep   4
    # click to open
    click element       xpath://span[@id='comp-k94f49ka__item1label']
    log                 "click plano lite anual 1 tentativa"
    sleep  3
    # click to close window
    click element       xpath://div[@id='comp-k9d67lfr']//*[local-name()='svg']
    log                 "fecha apertando x na tela de contratar"
    sleep  1
    # click to open
    click element       xpath://span[@id='comp-k94f49ka__item1label']
    sleep  3
    input text          xpath://input[@id='comp-k9d67s92input']     Vinicius
    sleep   1
    input text          xpath://input[@id='comp-k9d7moufinput']     Miranda de Pinho
    sleep   1
    input text          xpath://input[@id='comp-k9d67s9ainput']     vinicius.mpinho@gmail.com
    sleep   1
    select from list by label       comp-k9d7pf9gcollection     Plano Lite - Anual
    sleep  1
    click button         xpath://button[@id='comp-k9d67s9mlink']
    sleep       2
    element text should be      xpath://span[contains(text(),'Cadastro finalizado com sucesso!')]       Cadastro finalizado com sucesso!
    sleep  1
    click element   xpath://a[@id='comp-k9ep1eudlink']
    sleep  3
    Select Window                  title=Informe seu e-mail - PagSeguro UOL
    title should be                Informe seu e-mail - PagSeguro UOL
    sleep  2
    select window               title=Planos | UMarket






botao_plano_mensal_e_plano_anual

    sleep  3
    click element  xpath://div[@class='style-k94g1bzl_innerLabel']
    sleep  3


valor_do_plano_mensal
    sleep      1
    # plano lite
    element text should be      xpath://span[contains(text(),'99,90')]      99,90
    log                         "Plano Lite 99.90"

     # plano business
    element text should be      xpath://span[contains(text(),'231,90')]      231,90
    log                         "Plano Business 231.90"

      # plano ilimitado
    element text should be      xpath://span[contains(text(),'653,90')]      653,90
    log                         "Plano Ilimitado 653.90"
    sleep  1

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
    input text  xpath://input[@id='comp-jxad0a4einput']     vinicius.mpinho@gmail.com
    sleep  1
    # NOme do seu negocio
    input text  xpath://input[@id='comp-k8x5vvl1input']     SP System Automation
    sleep  1
    # clique botao enviar
    click button  id:comp-jxad0a5mlink

Cadastro com sucesso
    sleep       5
    element text should be  xpath://*[@id="comp-jxad0a66"]/span/p/span/span/span     Obrigado por se cadastrar!


Verificar_link_termos_de_uso

    sleep  2
    click link      xpath://a[contains(text(),'termos de uso e politica de privacidade')]
    sleep  3
    Select Window                  title=legal | UMarket
    title should be     legal | UMarket
    ${title_termos}                       Get Title
    Log                 ${title_termos}
    sleep   10
    Select Window                  title=UMarket



Login Facebook page
    sleep   3
    click element   xpath://img[@id='comp-iruti9mw0imageimageimage']
    sleep   10
    sleep   5
    ${title_page_face}                     Get Title
    Log              ${title_page_face}
    Select Window                  title=Umarket - Supermarket - Americana, Sao Paulo | Facebook - 5 photos
    title should be     Umarket - Supermarket - Americana, Sao Paulo | Facebook - 5 photos
    input text   xpath://table//input[@id='email']      facebook
    sleep   10
    Select Window                  title=UMarket

Login to Twitter
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw1imageimageimage']
    sleep   10
    ${title_twitter_page}                       Get Title
    Log                 ${title_twitter_page}
    Select Window                  title=Wix (@Wix) / Twitter
    title should be     Wix (@Wix) / Twitter
    sleep   10
    Select Window                  title=UMarket


Login to Instagram
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw1imageimageimage']
    sleep   10
    ${title_instagram}                       Get Title
    Log                 ${title_instagram}
    Select Window                  title=UMarket (@umarket.mobi) • Instagram photos and videos
    title should be     UMarket (@umarket.mobi) • Instagram photos and videos
    sleep   10
    Select Window                  title=UMarket



login_linked_page
    sleep   8
    click element   xpath://img[@id='comp-iruti9mw2imageimageimage']
    sleep   10
    ${title_linkedIN}                       Get Title
    Log                 ${title_linkedIN}
    Select Window                  title=UMarket | LinkedIn
    title should be    UMarket | LinkedIn
    sleep   10
    Select Window                  title=UMarket




