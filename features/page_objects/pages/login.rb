
module Pages
    
    class LoginPage < SitePrism::Page
        set_url '/auth/'
        element :input_login, 'input[id="username"]'
        element :input_password, 'div[class="input-container -security-input js-inputpassword"] input'
        element :btn_show_password, 'div[class="input-container -security-input js-inputpassword"] button'
        element :btn_loged, 'button[id="loginButton"]'
        
        
    end




end
