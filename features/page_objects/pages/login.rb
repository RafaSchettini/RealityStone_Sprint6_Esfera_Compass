
module Pages
    
    class LoginPage < SitePrism::Page
        
        set_url('/auth/')
        
        element :input_login, 'input[id="username"]'
        element :input_password, 'div[class="input-container -security-input js-inputpassword"] input'
        
        element :btn_show_password, 'div[class="input-container -security-input js-inputpassword"] button'
        element :btn_logged, 'button[id="loginButton"]'

        element :create_acc, '.forgot-pass'
        element :input_cpf_cadastro, '#cpfOrCnpj'
            
    end
end
