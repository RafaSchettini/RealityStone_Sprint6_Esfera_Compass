Dado('possuir produtos adicionados ao carrinho') do
    expect(@cart_page).to have_cart_products
end
  
Quando('informar {string}') do |cep|
    
    cep = Factory::Dynamic.locale_data_info

    @cart_page.input_cep(cep)

end
  
Então('mensagem de validação deverá ser exibida') do
    expect(@cart_page).to have_cep_message
end

Quando('alterar a quantidade de um certo produto') do
    @price_before = @cart_page.price_points['textContent']
    @cart_page.open_and_change_qtt()
end
  
Então('preço final deverá ser alterado') do
    expect(@cart_page.price_points['textContent']).not_to eql @price_before
end

Dado('que o usuário esteja localizado na página do carrinho') do
    steps %{
        Dado que o usuário esteja na página inicial
        Quando realizar a busca por um produto
        E acessar a página do produto
        E o usuário alterar a cor do produto
        E alterar maneira de resgate
        Então o produto deverá ser adicionado ao carrinho
    }
end