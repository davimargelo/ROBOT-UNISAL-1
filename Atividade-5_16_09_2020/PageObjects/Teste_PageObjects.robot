*** Settings ***
Documentation      Suite description
Resource           ../Functions/Teste_Keywords.robot
Resource           ../TestSuite/Teste_Atividade_5.robot

*** Variables ***

###TESTE ECOMMERCE
${BROWSER}              chrome
${GOOGLEURL}            http://www.google.com
${VALOR1PESQUISACOMPRA}    Faded Short Sleeve T-shirts
${LIXEIRACOMPRA}       //*[@class="icon-trash"]
${VALORTOTALCOMPRA}       //*[@id="total_price"]//..//*[contains(text(),'$84.55')]
${ECOMMERCEPAGE}        http://automationpractice.com/
${PESQUISACOMPRA}       //*[@class="search_query form-control ac_input"]
${BOTAOPESQUISACOMPRA}       //*[@class="btn btn-default button-search"]
${OPCAO1PESQUISACOMPRA}       //*[@id="best-sellers_block_right"]/div/ul/li[2]/div/h5/a
${BOTAOADDTOCART}       //*[contains(text(),'Add to cart')]
${BOTAOPROCEED}       //*[@class="btn btn-default button button-medium"]
${BOTAOPLUS}       //*[@title="Add"]
${BOTAOCLOSEPOPUP}       //*[@title="Close window"]