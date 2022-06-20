require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page

        set_url('/results')

        sections :products, Sections::Products, Factory::Static.static_data('products_map')

        element :loader, 'div[class="general-loader"]'
        
        element :btn_close_ad, '.-textclosemodal'

        def close_ad
            if("#{ENVIRONMENT}" == 'hml' and has_btn_close_ad?(visible: true))
                btn_close_ad.click
            end
        end

        def access_product_page(index)

            if (has_loader?(visible: true))
                wait_until_loader_visible
                wait_until_loader_invisible
            end
            
            products[index].image.click

        end
     
    end
end