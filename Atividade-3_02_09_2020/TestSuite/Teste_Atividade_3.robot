*** Settings ***
Resource    ../Functions/Teste_Keywords.robot

*** Test Cases ***

Test title
    [Tags]              Teste
    ABRIR PHPTRAVELS
    PESQUISAR VIAGEM
    CHECK IN OUT
    CRIANCAS
    BUSCAR
    TIRAR PRINT