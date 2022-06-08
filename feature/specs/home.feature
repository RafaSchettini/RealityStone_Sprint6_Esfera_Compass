#language: pt

Funcionalidade: Home
    Como um usuário da Esfera
    Quero poder navegar entre as funcionalidades da home
    Para poder escolher meus produtos

    Contexto: Estar na home
    Dado que o usuário esteja na página inicial

    @validate_products_on_home
    Cenário: Validar produtos na home
        Então deverá ter produtos na home
    
    @click_on_menu
    Cenário: Escolher uma categoria do menu
        Quando selecionar "<categoria>" do menu
        Então deverá redirecionar para a página da categoria

    @click_on_sub_menu
    Cenário: Escolher tópico da categoria do menu
        Quando selecionar "<categoria>" do menu
        E selecionar um "<tópico>" da categoria
        Então deverá redirecionar para a página da categoria
    
    @app_download
    Cenário: Acessar página do aplicativo
        Quando selecionar aplicativo da "<plataforma>"
        Então deverá redirecionar para página de instalação