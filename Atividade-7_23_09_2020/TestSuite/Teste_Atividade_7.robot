*** Settings ***
Resource        ../Functions/Teste_Keywords.robot

*** Test Cases ***

Test title
    [Tags]              Teste
    Start Rule List
    Login e-commerce
    Add to Cart Faded
    Add to Cart Blouse
    Verifica Saldo

    # Verifica Valor Total da Compra
