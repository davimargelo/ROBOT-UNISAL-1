*** Settings ***
Documentation      Suite description
Resource           ../Functions/Teste_Keywords.robot
Resource           ../TestSuite/Teste_Atividade_3.robot

*** Variables ***

${BROWSER}         chrome
${PHPTRAVELURL}    https://www.hoteis.com/

${INPUTDESTINY}    //*[@id="qf-0q-destination"]
${TEXTDESTINY}     New York

${DATEIN}          //*[@id="qf-0q-localised-check-in"]
${TEXTIN}          25/12/2020
${DATEOUT}         //*[@id="qf-0q-localised-check-out"]
${TEXTOUT}         08/01/2021

${CHILDREN}        //*[@id="qf-0q-room-0-children"]/option[3]

${BUSCAR}          //*[@id="hds-marquee"]/div[2]/div/div/form/div[4]/button

${TIME}             //*[@id="main-content"]/main