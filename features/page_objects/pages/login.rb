module Pages
    
    class LoginPage < SitePrism::Page
        
        set_url('/auth/')
        
        element :input_login, '#username'
        element :input_password, '#password'
        
        element :btn_show_password, 'div[class="input-container -security-input js-inputpassword"] button'

        element :btn_login, '#loginButton'

        element :create_acc, '.forgot-pass'
        
        element :input_cpf_cadastro, '#cpfOrCnpj'
        element :btn_create_acc, '#firstAccessButton'
            
    end
end
