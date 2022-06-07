#language: pt

@sign_up
Funcionalidade: Cadastro
    Como usuário da plataforma Esfera
    Desejo efetuar o cadastro
    Para ter acesso aos produtos e serviços disponíveis 

    Contexto: Usuário localizado na página de login
        Dado que o usuário esteja localizado na página de login
        E acessar página de login

    @sign_up_validate
    Cenário: Validar Cadastro
        Quando o usuário informar "<dado>"
        Então login deverá ser efetuado com sucesso