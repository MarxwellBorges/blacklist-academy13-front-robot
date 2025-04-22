*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../Resource/Resource.centroCusto.resource




*** Keywords ***
Passo 08 Digitar o nome do centro de custo em branco
    Wait Until Element Is Visible    locator=${DigitarNovocadastro}
    Input Text    locator=${DigitarNovocadastro}    text=
    Sleep    3s


    
Passo 09 Digitar o nome do centro de custo com 01 digito
    Wait Until Element Is Visible    locator=${DigitarNovocadastro}
    Input Text    locator=${DigitarNovocadastro}    text=d
    Sleep    3s

Passo 11 validação de mensagem centro de custo em branco
    Wait Until Page Contains    text=O campo diretoria é obrigatório
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr'] 

Passo 12 validação de mensagem centro de custo com 01 caractere
    Wait Until Page Contains    text=O campo diretoria deve conter no minímo 2 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']    
    

Passo 08 Digitar o nome do centro de custo com 51 caracteres
    Wait Until Element Is Visible    locator=${DigitarNovocadastro}
    Input Text    locator=${DigitarNovocadastro}    text=Departamento de Desenvolvimento Sustentável e Inovação Tecnológica
    Sleep    1s

Passo 09 validação de mensagem centro de custo com 51 caracteres
    Wait Until Page Contains    text=O campo diretoria pode ter no máximo 50 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr']       