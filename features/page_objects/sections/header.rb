module Sections
    class Header < SitePrism::Section
        def input_and_search(product)
            find('div[class="-searchblock"] input', visible:false).set(product + "\n")
        end
    end
end