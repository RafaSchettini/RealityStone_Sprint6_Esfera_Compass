Quando('acessar a página do produto') do
    if("#{ENVIRONMENT}" == 'prd')
        @search_results_page.access_product_page(8)
    else
        @search_results_page.access_product_page(3)
    end
    @product_page = Pages::ProductPage.new
    binding.pry
end

Quando('o usuário alterar a cor do produto') do
    @name_before = @product_page.product_name['textContent']
    @product_page.colors[1].click
end

Então('o nome do produto deverá ser alterado') do
    expect(@product_page.product_name['textContent']).not_to eql @name_before
end

Quando('alterar maneira de resgate') do
    @product_page.choose_payment_method(1)
end
  
Então('botão de adicionar ao carrinho deverá ser liberado') do
    expect(@product_page).to have_payment_button
end

Então('o produto deverá ser adicionado ao carrinho') do
    @product_page.add_product_to_cart()
    @cart_page = Pages::CartPage.new
end

Dado('que o usuário esteja localizado na página de um certo produto') do
    steps %{
        Dado que o usuário esteja na página inicial
        Quando realizar a busca por um produto
        E acessar a página do produto
    }
end