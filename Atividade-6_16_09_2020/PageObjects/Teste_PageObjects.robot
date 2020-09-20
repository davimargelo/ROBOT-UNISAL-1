*** Settings ***
Documentation      Suite description
Resource           ../Functions/Teste_Keywords.robot
Resource           ../TestSuite/Teste_Atividade_6.robot

*** Variables ***

###TESTE ECOMMERCE
${BROWSER}              chrome
${GOOGLEURL}            http://www.google.com
${VALOR1PESQUISACOMPRA}    Faded Short Sleeve T-shirts
${VALOR2PESQUISACOMPRA}    Blouse
${ECOMMERCEPAGE}        http://automationpractice.com/
${PESQUISACOMPRA}       //*[@class="search_query form-control ac_input"]
${BOTAOPESQUISACOMPRA}       //*[@class="btn btn-default button-search"]
${OPCAO1PESQUISACOMPRA}       //*[@id="best-sellers_block_right"]/div/ul/li[2]/div/h5/a
${OPCAO2PESQUISACOMPRA}     //*[@id="center_column"]/ul/li/div/div[2]/h5/a
${BOTAOADDTOCART}       //*[@id="add_to_cart"]/button
${BOTAOPROCEED}       //*[@class="btn btn-default button button-medium"]
${BOTAOPLUS}       //*[@id="cart_quantity_up_1_1_0_0"]
${BOTAOPLUS2}   //*[@id="cart_quantity_up_2_7_0_0"]
${BOTAOCLOSEPOPUP}       //*[@title="Close window"]
${BOTAOCONTINUE}    //*[@id="center_column"]/p[2]/a[2]/i

