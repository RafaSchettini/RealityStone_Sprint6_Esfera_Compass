module Pages
    class CartPage < SitePrism::Page
        set_url('/cart')
        elements :cart_products, 'div[class="-boxproductcart"]'
        element :cep_input, 'div[class="input-label"] input'
        element :cep_message, '.util-error-message'

        def input_cep(cep)
            cep_input.set cep
        end
        
        element :points_dropbox, '.-optionqtdprodbox'
        element :btn_open_qtt, '.-boxqtdprod'
        elements :btn_qtt_options, '.-qtdproditem a'
        element :price_points, 'p[class="-textboldtwenty"] text:first-of-type'
        element :btn_remove, 'div[class="-remove util-onlydesktop"] div[class="-removeprodlink"] span'
        element :empty_cart_msg, '.-h3emptycart'
        element :btn_add_products, 'div[class="-boxendorder"] a'

        element :go_to_cart, '.-msglink'
        element :btn_order_confirm, '.-btnorderconfirm'

        element :input_cc, 'input[name="cardNumber"]'
        element :input_name, 'input[name="nameOnCard"]'
        element :input_vencimento, 'input[name="expiryDate"]'
        element :input_cvv, 'input[name="cardCVV"]'
        element :input_cpf, 'input[name="document"]'

        element :open_parcel, 'select[name="installment"]'
        elements :parcels, 'select[class="-selectvalue util-input-error"] option'

        element :input_cep, 'input[name="new-billing-address-custom-cep"]'

        element :billing_address, 'input[name="billing-address-custom"]'
        element :bairro, 'input[name="billing-county-custom"]'
        element :bairro_num, 'input[name="billing-address2-custom"]'

    end
end