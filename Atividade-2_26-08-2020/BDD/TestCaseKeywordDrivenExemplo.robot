*** Settings ***
Resource        ../Resource/Resource.robot
Suite Teardown  Fechar Navegador

*** Test Case ***
Validar acesso ao blog robotizandotestes
    Acessar blog robotizandotestes

Validar pesquisa de postagens
    Pesquisar a postagem "season premiere"
    Clicar no post "Season Premere: Introdução ao Robot Framework" encontrado