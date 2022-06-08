module Sections
    class Header < SitePrism::Section

        element :input_search,  'div[class="-searchblock"] input'
        #element :btn_search,  'span[class="icon-ic-search"]'

        def input_and_search(product)
            
            input_search.set product
            
            native.send_keys(:enter)

        end

    end
end