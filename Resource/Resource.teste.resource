*** Settings ***
Library    SeleniumLibrary
Library    String




*** Variables ***
${url}  https://black-list-front.qacoders.dev.br/login
${email_Qacoders}   sysadmin@qacoders.com
${senha_Qacoders}   1234@Test
${nome_departamento}    MBQacoders
${inseriremail_Qacoders}    //*[@id="email"]
${inserirsenha_Qacoders}    //*[@id="password"]
${clicar_btaoentrar}    //button[normalize-space()='Entrar'] 
${clicar_cadastro}  //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig']
${clicar_departamento}  //*[@id="Departamento"]/span
${clicar_editar}    //*[@id="edit"] 
${digitar_departamento}    //*[@id="departmentName"]
${clicar_centroDecusto}    //*[@id="Centro de Custo"]
${clicar_btsalvar}  //*[@id="save"] 
${clicar_novocadstro}  //*[@id="Novo Cadastro"]
${Digitar_novodpto}    //*[@id="departmentName"]






*** Keywords ***
Abrir navegador
    Open Browser    browser=headlessfirefox   
    Maximize Browser Window

Fechar navegador
    Close Browser

Passo 01 Acessar página de login
    Go To    url=${url}
Passo 02 Digitar email de login
    Wait Until Element Is Visible    locator=${inseriremail_Qacoders}
    Input Text    locator=${inseriremail_Qacoders}    text=${email_Qacoders} 
    Sleep    1s  

Passo 03 Digitar senha de login
     Wait Until Element Is Visible    locator=${inserirsenha_Qacoders}
     Input Password    locator=${inserirsenha_Qacoders}    password=${senha_Qacoders}
     Sleep    1s  
     
Passo 04 Clicar no botão entrar
     Wait Until Element Is Visible    locator=${clicar_btaoentrar}
     Click Button    locator=${clicar_btaoentrar}  
     Sleep    1s 

 Passo 05 Clicar em Cadastro
    Wait Until Element Is Visible    locator=${clicar_cadastro}
    Click Element    locator=${clicar_cadastro} 
    Sleep    1s 

Passo 06 Clicar em Departamento
    Wait Until Element Is Visible    locator=${clicar_departamento}
    Click Element    locator=${clicar_departamento}
    Sleep    1s       
        
Passo 07 Clicar em clicar_editar
    Wait Until Element Is Visible    locator=${clicar_editar}
    Click Element    locator=${clicar_editar}
    Sleep    1s 

Passo 08 Digitar o nome do Departamento
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             S${palavra_randomica}
    Log                     ${FULL_NAME}
    Wait Until Element Is Visible    locator=${digitar_departamento}
    Input Text    locator=${digitar_departamento}    text=${FULL_NAME}
    Sleep    1s

Passo 09 Clicar no centro de Custo
    Wait Until Element Is Visible    locator=${clicar_centroDecusto}
    Click Element   locator=${clicar_centroDecusto}
    Sleep    1s
Passo 10 Clicar em salvar
    Wait Until Element Is Visible    locator=${clicar_btsalvar}
    Click Element    locator=${clicar_btsalvar}
    Sleep    1s

### Validação de mensagem
Passo 11 clicar no botão novo Cadastro
    Wait Until Element Is Visible    locator=${clicar_novocadstro}
    Click Button    locator=${clicar_novocadstro}
    Sleep    1s
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}              ${palavra_randomica}
    Log                     ${FULL_NAME}
    Wait Until Element Is Visible    locator=${Digitar_novodpto}
    Input Text    locator=${Digitar_novodpto}     text=${FULL_NAME}
    Sleep    1s
    Wait Until Element Is Visible    locator=${clicar_btsalvar}
    Click Button    locator=${clicar_btsalvar}
    Sleep    1s

Passo 12 validação de mensagem
    Wait Until Element Is Visible    locator=${clicar_editar}
    Click Element    locator=${clicar_editar}
    Sleep    1s 
    Wait Until Element Is Visible    locator=${digitar_departamento}
    Input Text    locator=${digitar_departamento}    text=${nome_departamento}
    Sleep    1s
    Wait Until Element Is Visible    locator=${clicar_btsalvar}
    Click Button    locator=${clicar_btsalvar}
    Sleep    1s
    Wait Until Page Contains    text=Não é possível salvar esse registro. Departamento já cadastrado no sistema.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']

   

              
