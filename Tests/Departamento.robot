*** Settings ***
Resource    ../Resource/Resource.teste.resource

*** Test Cases ***
CT01 - Teste caminho feliz
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Departamento
    

