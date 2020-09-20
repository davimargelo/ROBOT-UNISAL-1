*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_Atividade_5.robot

*** Keywords ***
Login e-commerce
    Open Browser               ${ECOMMERCEPAGE}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
Add to Cart
    Wait Until Page Contains Element    ${PESQUISACOMPRA}                 timeout=60.0
    Input Text                          ${PESQUISACOMPRA}                 ${VALOR1PESQUISACOMPRA}
    Click Element                       ${BOTAOPESQUISACOMPRA}
    Wait Until Page Contains Element    ${OPCAO1PESQUISACOMPRA}           timeout=60.0
    Click Element                       ${OPCAO1PESQUISACOMPRA}
    Wait Until Page Contains Element    ${BOTAOADDTOCART}                 timeout=60.0
    Click Element                       ${BOTAOADDTOCART}
    Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}                timeout=60.0
    sleep                               5
    Click Element                       ${BOTAOPROCEED}
    Wait Until Page Contains Element    ${BOTAOPLUS}                      timeout=60.0
Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status    Verifica Valor Total da Compra
    sleep                               1
    Run Keyword If    '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...               Capture Page Screenshot
    ...               AND                                Log To Console    Saldo Suficiente!
    ...               ELSE                               Run Keywords      Capture Page Screenshot    AND    Log To Console    Saldo Insuficiente!    AND    Click Element    ${BOTAOPLUS}    AND    Verifica Saldo
Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}       timeout=60.0
    Page Should Contain Element         ${VALORTOTALCOMPRA}


