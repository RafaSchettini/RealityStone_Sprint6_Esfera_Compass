module Pages
    class SingUp < SitePrism::Page

        set_url('/auth/realms/Esfera_Prod/login-actions')

        element :sing_up, 'div[class="-containeraccount util-flex-default"] span'
        element :create, 'div[class="p.forgot-pass"]'
        element :cpf, '#cpfOrCnpj'

        def click_icon
            sing_up.click
        end

        def click_create
            create.click
        end

        def input_dado(string)
            cpf.set string
        end
    end
end