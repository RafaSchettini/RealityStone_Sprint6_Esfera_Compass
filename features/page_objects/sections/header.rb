module Sections
    class Header < SitePrism::Section
        
        element :input_search,  'div[class="-searchblock"] input'
        
        def input_and_search(product)
            
            input_search.set product
            


        end

    end
end