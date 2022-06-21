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
    @cart_page.btn_open_qtt.click
    @cart_page.btn_qtt_options[1].click
    sleep 3
end

Quando('remover um produto') do
    @cart_page.btn_remove.click
end

Então('carrinho deverá ficar vazio') do
    expect(@cart_page).to have_empty_cart_msg
end

Quando('desejar adicionar mais produtos') do
    @cart_page.btn_add_products.click
end

Então('deverá ser redirecionado para página inicial') do
    expect(@home_page.current_url).to eq('https://p7185399c1tst-store.occa.ocs.oraclecloud.com/')
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