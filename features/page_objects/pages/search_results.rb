require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page

        set_url('/results')

        sections :products, Sections::Products, 'div[class="molecule-box-prod-default -pd-image -with-shadow-prod -listbox"]'
     
    end
end