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

        def open_and_change_qtt
            
            sleep 2
            btn_open_qtt.click

            wait_until_points_dropbox_visible
            wait_until_btn_qtt_options_visible

            sleep 2
            btn_qtt_options[1].click

        end

    end
end