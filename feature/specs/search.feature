#language: pt

@search
Funcionalidade: Busca
    Como um usuário da plataforma Esfera
    Desejo realizar a busca por diversos produtos
    Para visualizar mais informações de um certo produto

    Contexto: Usuário localizado na página inicial
        Dado que o usuário esteja na página inicial

    @search_products
    Cenário: Busca por produtos na plataforma
        Quando realizar a busca por um produto
        Então resultados deverão ser retornados ao usuário

    @search_for_available_products
    Esquema do Cenário: Busca por produtos disponíveis na plataforma
        Quando realizar a busca pelo "<produto>"
        Então resultados deverão ser retornados ao usuário

        Exemplos:
        | produto                    |
        | Cozinha                    |
        | Tv e Aparelhos de Vídeo    |
        | Bebidas                    |
        | Casa e Construção          |
        | Celulares e Telefonia      |
        | Beleza e Cuidados Pessoais |
        