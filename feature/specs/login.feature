#language: pt

@login
Funcionalidade: Login
    Como usuário da plataforma Esfera
    Desejo efetuar login
    Para ter acesso aos produtos e serviços disponíveis 

    Contexto: Usuário localizado na página de login
        Dado que o usuário esteja na página inicial
        E acessar página de login

    @login_validate
    Cenário: Validar login
        Quando o usuário informar "<dado>"
        E usuário informar "<senha>"
        Então login deverá ser efetuado com sucesso