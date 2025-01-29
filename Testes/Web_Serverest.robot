*** Settings ***
Resource         ../Resource/web.robot
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***

Automação WEB do Serverest
    Cadastrar um novo usuario
    Preencher os Dados
Realiza Login no Sistema
    Login no Sistema
Lista todos os usuários do Sistema
    Login no Sistema
    Listar Usuários
Cadastra um produto no Sistema
    Login no Sistema
    Cadastrar Produto
Lista todos os produtos no Sistema
    Login no Sistema
    Listar Produto
    
