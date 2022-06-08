#language: pt

Funcionalidade: Pontos
    Como um usuário da plataforma Esfera
    Quero explorar as ações possíveis com pontos
    Para um melhor aproveitamento do site

    Contexto: Estar na Home
        Dado que o usuário esteja na página inicial
        Quando acessar página de compra de pontos

    @change_points_qtt
    Cenário: Alterar a quantidade de pontos na compra
        Quando alterar a quantidade de pontos a serem comprados
        Então o valor da compra deverá ser alterado
    
    @without_coupon
    Cenário: Compra de pontos sem cupom de desconto
        Quando alterar a quantidade de pontos a serem comprados
        Então deverá ser redirecionado para página de pagamento

    @with_coupon
    Cenário: Aplicar cupom de desconto
        Quando adicionar um "<cupom>"
        Então resultados deverão ser retornados