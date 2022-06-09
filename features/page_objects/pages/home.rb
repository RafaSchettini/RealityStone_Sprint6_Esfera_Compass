require_relative '../sections/header'
require_relative '../sections/home'

module Pages
    class Home < SitePrism::Page

        set_url('/')

        section :header, Sections::Header, 'header'
        sections :products_on_home, Sections::Home, 'div[class="swiper-wrapper swiper-prod-ganhe-mais-pontos-wrapper custom-row-less"]'
        
        
        

        def search_for(product)
            
            header.input_and_search(product)
            
        end

    end
end