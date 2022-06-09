#language: pt

@cart
Funcionalidade: Carrinho
    Como usuário da plataforma Esfera
    Desejo ter acesso a página do carrinho
    Para ter a possibilidade de finalizar compras 

    Contexto: Usuário localizado na página do carrinho
        Dado que o usuário esteja localizado na página do carrinho
        E possuir produtos adicionados ao carrinho

    @validate_purchase
    Cenário: Finalizar compra
        Quando informar "<cep>"
        Então mensagem de validação deverá ser exibida

    @change_product_qtt
    Cenário: Alterar quantidade de um certo produto
        Quando alterar a quantidade de um certo produto
        Então preço final deverá ser alterado
    
    @remove_product
    Cenário: Remover um produto
        Quando remover um produto
        Então preço final deverá ser alterado

    @add_more_products
    Cenário: Adicionar mais produtos
        Quando desejar adicionar mais produtos
        Então deverá ser redirecionado para página inicial