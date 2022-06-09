module Sections
    class Home < SitePrism::Section

        #element :product, 'div[class="swiper-slide -swiper-box-swiper-prod-item swiper-slide-active"]'
        element :product_name, 'div[class="-prodtitle"]'
        element :product_img, 'div[class="-prodimage"]'
        

    end
end