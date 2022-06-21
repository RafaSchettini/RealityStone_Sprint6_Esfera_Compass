module Sections
    class Home < SitePrism::Section
        element :product_name, 'div[class="-prodtitle"]'
        element :product_img, 'div[class="-prodimage"]'
    end
end