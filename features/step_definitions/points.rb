Quando('acessar página de compra de pontos') do
    @home_page.click_on_submenu(5, 2)
    @points_page = Pages::PointsPage.new
    @search_results_page = Pages::SearchResults.new
    @search_results_page.close_ad()
end
  
Quando('alterar a quantidade de pontos a serem comprados') do
    @price_beffore = @points_page.text_img['textContent']
    @points_page.button_adition.click
end
  
Então('o valor da compra deverá ser alterado') do
    expect(@points_page.text_img['textContent']).not_to eql @price_beffore
end

Quando('adicionar um {string}') do |cupom|
    cupom = Factory::Static.static_data('test_cupom')
    @points_page.add_coupon.click
    @points_page.input_coupon.set cupom
    @points_page.button_apply_coupon.click
end
  
Então('resultados deverão ser retornados') do
    expect(@points_page).to have_text_error
end

Então('ser redirecionado para página de pagamento') do
    @points_page.continue_button.click
    @cart_page = Pages::CartPage.new
    @cart_page.go_to_cart.click
    @cart_page.btn_order_confirm.click
end

Quando('informar dados do cartão de crédito') do
    @cart_page.input_cc.set "4012001037141112"
    @cart_page.input_name.set "Teste Testador"
    @cart_page.input_vencimento.set "12/24"
    @cart_page.input_cvv.set "123"
    @cart_page.input_cpf.set cpf = Factory::Static.static_data("test_cpf_cadastro")
    @cart_page.open_parcel.click
    @cart_page.parcels[1].click
    @cart_page.input_cep.set "84950-000"
    @cart_page.billing_address.set "Teste Rua"
    @cart_page.bairro.set "Bairro Teste"
    @cart_page.bairro_num.set "123"
end

Então('compra deverá ser efetuada com sucesso') do
    # pending
end

Dado('o usuário esteja logado') do
    steps %{
        E acessar página de login
        Quando o usuário informar "<dado>"
        E usuário informar "<senha>"
        Então login deverá ser efetuado com sucesso
    }
end