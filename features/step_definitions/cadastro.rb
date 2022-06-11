Dado('acessar página de login') do
    @home_page = Pages::Home.new
    @sing_page = Pages::SingUp.new
    @sing_page.click_icon
    @sing_page.click_create
  end
  
  Quando('o usuário informar {string}') do |string|
    @sing_page.input_dado(string)
  end
  
  Então('login deverá ser efetuado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end