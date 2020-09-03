*** Settings ***
Resource    ../Functions/Teste_Keywords.robot

*** Test Cases ***

Test title
    [Tags]              Teste2
    ABRIR PHPTRAVELS
    PESQUISAR VIAGEM
    CHECK IN OUT
    CRIANCAS
    BUSCAR
    TIRAR PRINT