require_relative '../sections/header'
require_relative '../sections/home'

module Pages
    class Home < SitePrism::Page

        set_url('/')

        section :header, Sections::Header, '.js-header'
        
        sections :products_on_home, Sections::Home, 'div[class="swiper-wrapper swiper-prod-ganhe-mais-pontos-wrapper custom-row-less"]'
        elements :menu, 'li[class="-menuitemcontainer"]'
        elements :menu_pontos, '.-simpleactivemenu'

        def search_for(product)
            
            header.input_and_search(product)
            
        end

        def click_on_menu(index)
            menu[index].click

        end

        def click_on_submenu(index, index2)
            menu[index].click
            menu[index2].click

        end

        def click_compre_pontos(index, index2)
            menu[index].click
            menu_pontos[index2].click
        end

    end
end