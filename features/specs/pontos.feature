#language: pt

@points
Funcionalidade: Pontos
    Como um usuário da plataforma Esfera
    Quero explorar as ações possíveis com pontos
    Para um melhor aproveitamento do site

    Contexto: Estar na Home
        Dado que o usuário esteja na página inicial
        E o usuário esteja logado
        Quando acessar página de compra de pontos

    @change_points_qtt
    Cenário: Alterar a quantidade de pontos na compra
        Quando alterar a quantidade de pontos a serem comprados
        Então o valor da compra deverá ser alterado
    
    @apply_coupon
    Cenário: Aplicar cupom de desconto
        Quando adicionar um "<cupom>"
        Então resultados deverão ser retornados

    @buy_points
    Cenário: Compra de pontos
        E alterar a quantidade de pontos a serem comprados
        E ser redirecionado para página de pagamento
        E informar dados do cartão de crédito
        Então compra deverá ser efetuada com sucesso