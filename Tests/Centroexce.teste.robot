*** Settings ***
Resource    ../Resource/Resource.centroCusto.resource
Resource    ../Resource/Resource.centroExc.resource
Resource    ../Resource/Resource.excecdep.resource


*** Test Cases ***
CT 01 - Passo 08 Digitar o nome do centro de custo em branco
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Centro de custo
    Passo 07 Clicar em novo Cadastro
    Passo 08 Digitar o nome do centro de custo em branco
    Passo 10 Clicar em salvar
    Passo 11 validação de mensagem centro de custo em branco

CT 02 - Passo 08 Digitar o nome do centro de custo com 01 digito
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Centro de custo
    Passo 07 Clicar em novo Cadastro
    Passo 09 Digitar o nome do centro de custo com 01 digito
    Passo 12 validação de mensagem centro de custo com 01 caractere 


CT 03 - Passo 08 Digitar o nome do centro de custo com 51 caracteres
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Centro de custo
    Passo 07 Clicar em novo Cadastro
    Passo 08 Digitar o nome do centro de custo com 51 caracteres
    Passo 09 validação de mensagem centro de custo com 51 caracteres
   
       