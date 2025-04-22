*** Settings ***
Resource    ../Resource/Resource.teste.resource
Resource    ../Resource/Resource.centroCusto.resource


*** Test Cases ***
CT01 - Teste caminho feliz Centro de custo
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Centro de custo
    Passo 07 Clicar em novo Cadastro
    Passo 08 Digitar novo Cadastro
    Passo 09 Clicar em Salvar
    Passo 10 clicar no botão novo Cadastro
    Passo 11 validação de mensagem centro de custo já criado

    