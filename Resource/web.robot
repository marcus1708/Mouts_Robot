*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://front.serverest.dev/login
*** Keywords ***
Abrir o Navegador
    Open Browser 
    Maximize Browser Window
Fechar o Navegador
    Close Browser
Cadastrar um novo usuario
    Go To    url=${url}
    Title Should Be    Front - ServeRest
    Click Element    locator=//*[@id="root"]/div/div/form/small/a
Preencher os Dados
    Input Text    id=nome        text=teste
    Input Text    id=email       text=qa@mouts.com.br
    Input Text    id=password    text=12345
    Select Checkbox    locator=//*[@id="administrador"]
    Click Button    locator=//*[@id="root"]/div/div/form/div[5]/button
Login no Sistema
   Go To    url=${url}
   Input Text    id=email       text=qa@mouts.com.br
   Input Text    id=password    text=12345
   Click Button  locator=//*[@id="root"]/div/div/form/button
   Wait Until Page Contains    text=Bem Vindo  
   Wait Until Page Contains    text=Listar
Listar Usuários
  Wait Until Page Contains    text=Listar Usuários
  Click Element  locator=//*[@id="navbarTogglerDemo01"]/ul/li[3]/a
Cadastrar Produto
  Wait Until Page Contains    text=Cadastrar Produtos
  Click Element  locator=//*[@id="navbarTogglerDemo01"]/ul/li[4]/a
  Wait Until Page Contains    text=Cadastro de Produtos

  Input Text    id=nome          text=Ferrari
  Input Text    id=price         text=500000
  Input Text    id=description   text=Ferrari, o melhor carro do mundo !
  Input Text    id=quantity      text=10
  Click Button    locator=//*[@id="root"]/div/div/div/form/div[6]/div/button
Listar Produto
  Wait Until Page Contains    text=Listar Produtos
  Click Element  locator=//*[@id="navbarTogglerDemo01"]/ul/li[5]/a  
  Wait Until Element Is Visible    locator=//*[@id="root"]/div/div/p/table/tbody/tr[67]/td[3]
  Element Should Be Visible   locator=//*[@id="root"]/div/div/p/table/tbody/tr[67]/td[3]
