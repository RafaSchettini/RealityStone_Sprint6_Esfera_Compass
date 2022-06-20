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

Então('deverá ser redirecionado para página de pagamento') do
    @points_page.continue_button.click
end