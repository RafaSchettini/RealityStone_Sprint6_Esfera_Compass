#language: pt

Funcionalidade: Login
    Como usuário da plataforma Esfera
    Desejo efetuar login
    Para ter acesso aos produtos e serviços disponíveis 

    Contexto: Usuário localizado na página de login
        Dado que o usuário esteja localizado na página de login


    Cenário: Validar login
        Quando o usuário informar "<dado>"
        E usuário informar "<senha>"
        Então login deverá ser efetuado com sucesso


