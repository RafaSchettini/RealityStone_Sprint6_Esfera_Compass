module Pages
    class ProductPage < SitePrism::Page

        set_url('/p/')

        elements :colors, 'label[class="btn btn-danger btn-radio-button"]'

        element :payment_button, 'div[class="-containerbtncomprar"] button'
        elements :payment_options, 'div[class="-boxcontent"] label'

        def choose_payment_method(index)

            sleep 3
            payment_options[1].click

        end

        element :product_name, 'div[class="-nameproduct"]'

        element :cart_button, '.-msglink'
        
        def add_product_to_cart

            payment_button.click
            
            cart_button.click

        end

    end
end