Dado("acessar página de login") do
  @home_url = @home_page.current_url
  @home_page.btn_login.click
  @login_page = Pages::LoginPage.new
end

Quando("o usuário informar {string}") do |dado|
  dado = Factory::Static.static_data("test_cpf_login")
  @login_page.input_login.set dado
end

Quando("usuário informar {string}") do |senha|
  senha = Factory::Static.static_data("test_password")
  @login_page.input_password.set senha
  @login_page.btn_show_password.click

  @login_page.btn_login.click
end

Então("login deverá ser efetuado com sucesso") do
  expect(@home_page).to have_hello_user
end

Quando("o usuário acessar página de cadastro") do
  @login_page.create_acc.click
end

Quando("o usuário informar {string} de cadastro") do |cpf|
  cpf = Factory::Static.static_data("test_cpf_cadastro")
  @login_page.input_cpf_cadastro.set cpf
  @login_page.btn_create_acc.click

  @sign_up_page = Pages::SignUpPage.new
  @sign_up_page.checkbox_terms.first.set true
end

Quando("o usuário informar informações pessoais válidas") do
  @sign_up_page.input_all_data()
end

Então("cadastro deverá ser efetuado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end
