Dado('acessar página de login') do
  @home_page.btn_login.click
  @login_page = Pages::LoginPage.new
  end
  
  Quando('o usuário informar {string}') do |dado|
    dado = "98886908415"
    @login_page.input_login.set dado
  end
  
  Quando('usuário informar {string}') do |senha|
    senha = "1234567890"
    @login_page.input_password.set senha
    @login_page.btn_show_password.click
    @login_page.btn_loged.click
    binding.pry
  end
  
  Então('login deverá ser efetuado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end