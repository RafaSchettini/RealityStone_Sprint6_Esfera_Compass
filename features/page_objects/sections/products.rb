module Sections
    class Products < SitePrism::Section
        element :name, '.-prodtitle'
        element :price, '.-currentprice'
        element :image, 'img'
    end
end