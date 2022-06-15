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
    Esquema do Cenário: Validar login
        Quando o usuário informar "<dado>"
        E usuário informar "<senha>"
        Então login deverá ser efetuado com sucesso

    # @sign_up_validate
    # Cenário: Validar Cadastro
    #     Quando o usuário acessar página de cadastro
    #     E o usuário informar "<dado>" de cadastro
    #     Então login deverá ser efetuado com sucesso    