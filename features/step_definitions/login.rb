Dado('acessar página de login') do
    @home_page.btn_login.click
    @login_page = Pages::LoginPage.new
end

Quando('o usuário informar {string}') do |dado|
    dado = "123.321.123-12"
    @login_page.input_login.set dado
end

Quando('usuário informar {string}') do |senha|
    senha = "1234567890"
    @login_page.input_password.set senha
    @login_page.btn_show_password.click
    @login_page.btn_logged.click
end

Quando('o usuário acessar página de cadastro') do
    @login_page.create_acc.click
end

Quando('o usuário informar {string} de cadastro') do |cpf|
    cpf = "123.321.123-12"
    @login_page.input_cpf_cadastro.set cpf
end

Então('login deverá ser efetuado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end