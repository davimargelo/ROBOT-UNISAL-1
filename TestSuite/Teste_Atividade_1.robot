*** Settings ***
Resource    ../Functions/Teste_Keywords.robot

*** Test Cases ***
Test title
    [Tags]    Teste2
    Abrir Libraries
    Abrir Builtin
    Mudar Aba
    Tirar print e fechar