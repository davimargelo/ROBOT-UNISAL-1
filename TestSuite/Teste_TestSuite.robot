*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot

*** Test Cases ***
Test title
    [Tags]    Teste1
    Login Google
    Busca Google