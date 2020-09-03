*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_Atividade_3.robot

*** Keywords ***
ABRIR PHPTRAVELS
    Open Browser                        ${PHPTRAVELURL}    ${BROWSER}        options=add_argument("--incognito")
    Maximize Browser Window

PESQUISAR VIAGEM
    Wait Until Page Contains Element    ${INPUTDESTINY}
    Input Text                          ${INPUTDESTINY}    ${TEXTDESTINY}


CHECK IN OUT
    Input Text                          ${DATEIN}          ${TEXTIN}
    Input Text                          ${DATEOUT}         ${TEXTOUT}

CRIANCAS
    Click Element                       ${CHILDREN}

BUSCAR
    Wait Until Page Contains Element    ${BUSCAR}
    Click Element                       ${BUSCAR}
TIRAR PRINT
    Wait Until Page Contains Element    ${TIME}
    Capture Page Screenshot



