Quando('acessar página de compra de pontos') do
    @home_page = Pages::Home.new
    @home_page.click_on_menu(5)
    @home_page.click_compre_pontos(2)
  end
  
  Quando('alterar a quantidade de pontos a serem comprados') do
    
  end
  
  Então('o valor da compra deverá ser alterado') do
    pending # Write code here that turns the phrase above into concrete actions
  end