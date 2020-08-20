*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Variables ***

${BROWSER}              chrome
${GOOGLEURL}            http://www.google.com
${BUSCAGOOGLE}     //*[@title="Pesquisar"]
${ROBOTORG}        //*[@class="LC20lb DKV0Md"]//..//*[contains(text(),'Robot Framework User Guide')]
${ROBOTURL}  https://robotframework.org/
${LIBRARIES}  //*[@class="nav-link"]//..//*[contains(text(),'Libraries')]
${BUILTIN}  //*[@href="http://robotframework.org/robotframework/#standard-libraries"]//..//*[contains(text(),'Builtin')]
