Quando('acessar a página do produto') do
    @search_results_page.access_product_page(8)
    @product_page = Pages::ProductPage.new
end

Quando('o usuário alterar a cor do produto') do
    @name_before = @product_page.product_name['textContent']
    @product_page.colors[1].click
end

Então('o nome do produto deverá ser alterado') do
    expect(@product_page.product_name['textContent']).not_to eql @name_before
end

Dado('que o usuário esteja localizado na página de um certo produto') do
    steps %{
        Dado que o usuário esteja na página inicial
        Quando realizar a busca por um produto
        E acessar a página do produto
    }
end