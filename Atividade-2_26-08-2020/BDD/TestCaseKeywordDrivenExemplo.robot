*** Settings ***
Resource        ../Resource/Resource.robot
Suite Teardown  Fechar Navegador

*** Test Case ***
Validar acesso ao blog robotizandotestes
    Acessar blog robotizandotestes

Validar pesquisa de postagens
    Pesquisar a postagem "season premiere"
    Clicar no post "Season Running - Ep. 02: Comandos básicos de Execução" encontrado