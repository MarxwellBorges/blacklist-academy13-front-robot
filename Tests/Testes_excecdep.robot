*** Settings ***
Resource    ../Resource/Resource.excecdep.resource
Resource    ../Resource/Resource.teste.resource


*** Test Cases ***
CT 02 - Alterar depatamento nome em branco
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Departamento
    Passo 07 Clicar em clicar_editar
    Passo 08 Digitar o nome do Departamento em branco
    Passo 10 Clicar em salvar
    Passo 12 validação de mensagem nome em branco

 CT 03 - Alterar departamento com 51 caracteres 
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar 
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Departamento
    Passo 07 Clicar em clicar_editar
    Passo 08 Digitar o nome do Departamento com 51 caracteres
    Passo 10 Clicar em salvar 
    Passo 13 validação de mensagem

CT 04 - Alterar depatamento com 01 caractere
    Abrir navegador
    Passo 01 Acessar página de login
    Passo 02 Digitar email de login
    Passo 03 Digitar senha de login
    Passo 04 Clicar no botão entrar
    Passo 05 Clicar em Cadastro
    Passo 06 Clicar em Departamento
    Passo 07 Clicar em clicar_editar 
    Passo 09 Alterar depatamento com 01 caractere
    Passo 10 Clicar em salvar
    Passo 14 validação de mensagem 
 