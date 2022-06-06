#language: pt

Funcionalidade: Página do Produto
    Como usuário da plataforma Esfera
    Desejo personalizar informações de um certo produto
    Para adquirir o produto com a melhor experiência possível

    Contexto: Usuário localizado na página de um produto
        Dado que o usuário esteja localizado na página de um certo produto

    @change_product_color
    Cenário: Troca de cor de produto
        Quando o usuário alterar a cor do produto
        Então o nome do produto deverá ser alterado

    @change_purchase_method
    Cenário: Troca de maneira de resgate
        Quando o usuário alterar a cor do produto
        E alterar maneira de resgate
        Então botão de adicionar ao carrinho deverá ser liberado
    
    @change_partner_store
    Cenário: Troca de loja parceira
        Quando o usuário alterar a loja parceira
        Então o nome da loja parceira deverá ser alterada
    
    @add_product_to_cart
    Cenário: Adicionar produto ao carrinho
        Quando o usuário alterar a cor do produto
        E alterar maneira de resgate
        Então o produto deverá ser adicionado ao carrinho