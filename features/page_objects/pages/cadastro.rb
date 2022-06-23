module Pages
  class SignUpPage < SitePrism::Page
    set_url("/auth/")

    elements :checkbox_terms, "#checkboxTerms", visible: false
    element :btn_continue, :xpath, '//*[@id="terms-and-conditions"]/div[2]/div/button'

    # Informações de cadastro:
    element :input_name, "#full-name-create-account"
    element :input_birthday, "#birth-date-create-account"
    element :input_cpf, "#cpfcnpj-create-account"
    element :btn_gender, 'label[for="male"]', visible: false
    element :input_phone_number, "#phone-number-create-account"
    element :input_confirm_phone_number, "#confirm-phone-number-create-account"
    element :input_email, "#email-create-account"
    element :input_confirm_email, "#confirm-email-create-account"

    def input_all_data
      input_name.set "Christophe Bartell"
      input_birthday.set "07/12/1994"

      # input_cpf.set Factory::Static.static_data("test_cpf_cadastro")
      btn_gender.set true

      phone_number = "(33) 12414-5155"
      input_phone_number.set phone_number
      input_confirm_phone_number.set phone_number

      email = "kirsten.greenholt@corkeryfisher.info"
      input_email.set email
      input_confirm_email.set email
      binding.pry
    end
  end
end
