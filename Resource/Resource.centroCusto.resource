*** Settings ***
Library    SeleniumLibrary
Library    String


*** Variables ***
${ClicarCentrocusto}    //span[normalize-space()='Centro de Custo']
${ClicarNovocadstro}    //button[@id='Novo Cadastro']
${DigitarNovocadastro}    //input[@id='costCentername']
${ClicarSalvar}    //button[@id='save']



*** Keywords ***
Passo 06 Clicar em Centro de custo
    Wait Until Element Is Visible    locator=${ClicarCentrocusto}
    Click Element    locator=${ClicarCentrocusto}
    Sleep    1s   

Passo 07 Clicar em novo Cadastro
    Wait Until Element Is Visible    locator=${ClicarNovocadstro}
    Click Button    locator=${ClicarNovocadstro}
    Sleep    1s 

Passo 08 Digitar novo Cadastro
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             S${palavra_randomica}
    Log                     ${FULL_NAME}
    Wait Until Element Is Visible    locator=${DigitarNovocadastro}
    Input Text    locator=${DigitarNovocadastro}    text=${FULL_NAME}
    Sleep    1s 
        
Passo 09 Clicar em Salvar
    Wait Until Element Is Visible    locator=${ClicarSalvar}
    Click Button    locator=${ClicarSalvar}
    Sleep    1s 

### Validação de mensagem
Passo 10 clicar no botão novo Cadastro
    Wait Until Element Is Visible    locator=${clicar_novocadstro}
    Click Button    locator=${clicar_novocadstro}
    Sleep    1s
    Wait Until Element Is Visible    locator=${DigitarNovocadastro}
    Input Text    locator=${DigitarNovocadastro}     text=Sbhtsganm
    Sleep    1s
    Wait Until Element Is Visible    locator=${ClicarSalvar}
    Click Button    locator=${ClicarSalvar}
    Sleep    1s    

Passo 11 validação de mensagem centro de custo já criado
    Wait Until Page Contains    text=Não é possível salvar esse registro. Centro de custos já cadastrado no sistema.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'] 