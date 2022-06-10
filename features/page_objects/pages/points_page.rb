module Pages

    class PointsPage < SitePrism::Page
        set_url('/p/compra-de-pontos/e000100033') 
        element :button_adition, 'button[class="molecule-prod-quant-btn-add js-molecule-prod-quant-btn-add"]'
    
        element :text_img, 'div[class="-pointsmoneytext"] strong'

    end
end