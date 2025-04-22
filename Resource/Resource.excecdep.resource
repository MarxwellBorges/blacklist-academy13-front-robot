*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../Resource/Resource.teste.resource

*** Variables ***

*** Keywords ***

Passo 08 Digitar o nome do Departamento em branco
    Wait Until Element Is Visible    locator=${digitar_departamento}
    Input Text    locator=${digitar_departamento}    text=
    Sleep    1s

Passo 12 validação de mensagem nome em branco
    Wait Until Page Contains    text=O campo diretoria é obrigatório
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
    Sleep    1s

Passo 08 Digitar o nome do Departamento com 51 caracteres
    Wait Until Element Is Visible    locator=${digitar_departamento}
    Input Text    locator=${digitar_departamento}    text=Departamento de Desenvolvimento Sustentável e Inovação Tecnológica
    Sleep    1s

Passo 09 Alterar depatamento com 01 caractere
    Wait Until Element Is Visible    locator=${digitar_departamento}
    Input Text    locator=${digitar_departamento}    text=D
    Sleep    1s

Passo 13 validação de mensagem
    Wait Until Page Contains    text=O campo diretoria pode ter no máximo 50 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
    

Passo 14 validação de mensagem
    Wait Until Page Contains    text=O campo diretoria deve conter no minímo 2 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']
                                               
        