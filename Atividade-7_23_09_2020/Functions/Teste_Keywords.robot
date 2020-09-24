*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_Atividade_7.robot

*** Keywords ***
Start Rule List
    @{L1}=                              Create List
    Set Global Variable                 ${L1}

Login e-commerce
    Open Browser                        ${ECOMMERCEPAGE}                   ${BROWSER}                        options=add_argument("--incognito")
    Maximize Browser Window

Add to Cart Faded
    Wait Until Page Contains Element    ${PESQUISACOMPRA}                  timeout=60.0
    Input Text                          ${PESQUISACOMPRA}                  ${VALOR1PESQUISACOMPRA}
    Click Element                       ${BOTAOPESQUISACOMPRA}
    Wait Until Page Contains Element    ${OPCAO1PESQUISACOMPRA}            timeout=60.0
    Click Element                       ${OPCAO1PESQUISACOMPRA}
    Wait Until Page Contains Element    ${BOTAOADDTOCART}                  timeout=60.0
    Click Element                       ${BOTAOADDTOCART}
    Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}                 timeout=60.0
    sleep                               5
    ${NOME_ITEM_VALUE}                  Get text                           ${FADED_VALUE}
    Click Element                       ${BOTAOPROCEED}
    Insert Into List                    ${L1}                              0                                 ${NOME_ITEM_VALUE}
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}                   timeout=60.0

Add to Cart Blouse
    Click Element                       ${BOTAOCONTINUE}
    Wait Until Page Contains Element    ${PESQUISACOMPRA}                  timeout=60.0
    Input Text                          ${PESQUISACOMPRA}                  ${VALOR2PESQUISACOMPRA}
    Click Element                       ${BOTAOPESQUISACOMPRA}
    Wait Until Page Contains Element    ${OPCAO2PESQUISACOMPRA}            timeout=60.0
    Click Element                       ${OPCAO2PESQUISACOMPRA}
    Wait Until Page Contains Element    ${BOTAOADDTOCART}                  timeout=60.0
    Click Element                       ${BOTAOADDTOCART}
    Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}                 timeout=60.0
    sleep                               5
    ${NOME_ITEM_VALUE}                  Get text                           ${BLOUSE_VALUE}
    Insert Into List                    ${L1}                              1                                 ${NOME_ITEM_VALUE} 
    Click Element                       ${BOTAOPROCEED}

Verifica Saldo
    ${VERIFICAVALORTOTAL}=              Run Keyword And Return Status      Verifica Valor Total da Compra
    Run Keyword If                      '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...                                 Capture Page Screenshot            AND                               Log To Console                         Saldo Suficiente!  
    ...                                 ELSE                               Run Keywords                      Capture Page Screenshot                AND                  Log To Console        Saldo Insuficiente!
    Log     ${L1}

Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}                   timeout=60.0
    Page Should Contain Element         ${VALORTOTALCOMPRA}

