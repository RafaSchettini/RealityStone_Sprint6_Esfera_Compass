module Pages
    class ProductPage < SitePrism::Page

        set_url('/p/')

        elements :colors, 'label[class="btn btn-danger btn-radio-button"]'

        element :product_name, 'div[class="-nameproduct"]'

    end
end