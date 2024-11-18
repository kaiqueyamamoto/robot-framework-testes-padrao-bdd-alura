*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${IMAGE}          https://picsum.photos/200/300
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')]
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Abrir navegador e acessar o site
    Open Browser    ${URL}    Chrome

Preencher os campos de um formulário
    Input Text    id:form-nome    Kaique
    Input Text    id:form-cargo   Dev
    Input Text    id:form-imagem  ${IMAGE}
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]
    Sleep   10s
    # Element Should Be Visible    class:colaborador
    # Sleep    5s
    [Teardown]    Close Browser
