Quando('acessar página de compra de pontos') do
    @home_page.click_on_menu(5)
    @home_page.click_compre_pontos(2)
    @points_page = Pages::PointsPage.new
end
  
Quando('alterar a quantidade de pontos a serem comprados') do
    @price_beffore = @points_page.text_img['textContent']
    @points_page.button_adition.click
end
  
Então('o valor da compra deverá ser alterado') do
    expect(@points_page.text_img['textContent']).not_to eql @price_beffore
end

