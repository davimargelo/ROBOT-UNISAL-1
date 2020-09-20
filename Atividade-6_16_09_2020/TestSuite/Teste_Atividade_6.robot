*** Settings ***
Resource        ../Functions/Teste_Keywords.robot

*** Test Cases ***

Test title
    [Tags]              Teste
    Login e-commerce
    Add to Cart Faded
    Add to Cart Blouse

    # Verifica Valor Total da Compra
