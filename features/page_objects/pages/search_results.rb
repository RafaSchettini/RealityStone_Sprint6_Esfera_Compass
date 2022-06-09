require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page

        set_url('/results')

        sections :products, Sections::Products, 'div[class="molecule-box-prod-default -pd-image -with-shadow-prod -listbox"]'

        element :loader, 'div[class="general-loader"]'

        def access_product_page(index)

            wait_until_loader_visible
            wait_until_loader_invisible
            
            products[index].image.click

        end
     
    end
end