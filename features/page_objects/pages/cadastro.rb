module Pages
    
    class SignUpPage < SitePrism::Page
        set_url('/auth/')
        element :checkbox_terms, '#checkboxTerms'
        element :btn_continue, 'div[class="content"] button[class="btn-esfera primary fill"]'
        # Informações de cadastro:
        element :input_name, '#full-name-create-account'
        element :input_birthday, '#birth-date-create-account'
        element :input_cpf, '#cpfcnpj-create-account'
        element :btn_gender, 'label[for="male"]'
        element :input_phone_number, '#phone-number-create-account'
        element :input_confirm_phone_number, '#confirm-phone-number-create-account'
        element :input_email, '#email-create-account'
        element :input_confirm_email, '#email-create-account'

        def input_all_data
            input_name.set Factory::Dynamic.name_data_info
            input_birthday.set Factory::Dynamic.birthday_data_info
            input_cpf.set Factory::Static.static_data('test_cpf_cadastro')
            phone_number = Factory::Dynamic.phone_number_data_info
            input_phone_number.set phone_number
            input_confirm_phone_number.set phone_number
            email = Factory::Dynamic.email_data_info
            input_email.set email
            input_confirm_email.set email
        end
    end
end
