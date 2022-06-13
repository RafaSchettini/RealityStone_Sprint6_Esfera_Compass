Dado('acessar página de login') do
    @home_page.btn_login.click
    @login_page = Pages::LoginPage.new
end

Quando('o usuário informar {string}') do |dado|
    dado = Factory::Static.static_data('test_cpf')
    @login_page.input_login.set dado
end

Quando('usuário informar {string}') do |senha|
    senha = Factory::Static.static_data('password')
    @login_page.input_password.set senha
    @login_page.btn_show_password.click
    @login_page.btn_logged.click
end

Quando('o usuário acessar página de cadastro') do
    @login_page.create_acc.click
end

Quando('o usuário informar {string} de cadastro') do |cpf|
    cpf = Factory::Static.static_data('test_cpf')
    @login_page.input_cpf_cadastro.set cpf
end

Então('login deverá ser efetuado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end