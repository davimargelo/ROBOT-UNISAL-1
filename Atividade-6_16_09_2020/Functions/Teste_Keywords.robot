*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_Atividade_6.robot

*** Keywords ***
Login e-commerce
    Open Browser               ${ECOMMERCEPAGE}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
Add to Cart Faded
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
    FOR    ${INDEX}    IN RANGE    1    5
        Click Element    ${BOTAOPLUS}
    END

Add to Cart Blouse
    Click Element                       ${BOTAOCONTINUE}                   
    Wait Until Page Contains Element    ${PESQUISACOMPRA}                 timeout=60.0
    Input Text                          ${PESQUISACOMPRA}               ${VALOR2PESQUISACOMPRA}
    Click Element                       ${BOTAOPESQUISACOMPRA}
    Wait Until Page Contains Element    ${OPCAO2PESQUISACOMPRA}           timeout=60.0
    Click Element                       ${OPCAO2PESQUISACOMPRA}         
    Wait Until Page Contains Element    ${BOTAOADDTOCART}                 timeout=60.0
    Click Element                       ${BOTAOADDTOCART}
    Wait Until Page Contains Element    ${BOTAOCLOSEPOPUP}                timeout=60.0
    sleep                               5
    Click Element                       ${BOTAOPROCEED}
    Wait Until Page Contains Element    ${BOTAOPLUS2}                      timeout=60.0
    FOR    ${INDEX}    IN RANGE    1    3
        Click Element    ${BOTAOPLUS2}
    END
    sleep                               3
    Capture Page Screenshot

