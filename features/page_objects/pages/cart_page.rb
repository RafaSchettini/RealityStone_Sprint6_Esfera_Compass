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
    end
end