#language: pt

Funcionalidade: Pontos
    COMO um usuário dos serviços do site Esfera
    QUERO explorar as ações possíveis com pontos
    PARA um melhor aproveitamento do site

    Contexto: Estar na Home
        Dado que esteja na Home
        Quando optar pela compra de pontos

    @sem_cupom
    Cenário: Comprar pontos sem cupom de desconto
        E for direcionado para a página de pagamento, efetuando este
        Então os pontos deverão ser adicionados à conta do usuário para uso deste

    @com_cupom
    Cenário: Comprar pontos com cupom de desconto
        E adicionar um cupom de desconto válido
        E o valor final da compra for alterado
        E for direcionado para a página de pagamento, efetuando este
        Então os pontos deverão ser adicionados à conta do usuário para uso deste

    @qnt_pontos
    Cenário: Alterar a quantidade de pontos na compra
        E aumentar ou diminuir a quantidade a ser comprada
        Então o valor da compra e a quantidade de pontos exibidos em tela deverá ser alterados