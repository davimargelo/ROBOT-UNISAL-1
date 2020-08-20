*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Keywords ***
Login Google
    Open Browser    ${GOOGLEURL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Go To         ${GOOGLEURL}

Busca Google
    Input Text    ${BUSCAGOOGLE}    ${BUSCAGOOGLEVALUE1}
    Press Keys    ${BUSCAGOOGLE}    RETURN
    Wait Until Page Contains Element    ${ROBOTORG}
#    Click Element    ${ROBOTORG}
    Capture Page Screenshot

Abrir Libraries
    Open Browser  ${ROBOTURL}  ${BROWSER}  options=add_argument("--incognito")
    Maximize Browser Window
    Wait Until Page Contains Element    ${LIBRARIES}
    Click Element    ${LIBRARIES}

Abrir Builtin
    Wait Until Page Contains Element    ${BUILTIN}
    Click Element  ${Builtin}

Mudar Aba
    ${Tabs} =   Get Window Titles
    select window  title=${Tabs[1]}
    
Tirar print e fechar
    Capture Page Screenshot
    Close Browser