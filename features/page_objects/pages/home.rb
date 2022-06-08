require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page

        set_url('/')

        section :header, Sections::Header, 'header'

        def search_for(product)
            
            header.input_and_search(product)
            
        end

    end
end