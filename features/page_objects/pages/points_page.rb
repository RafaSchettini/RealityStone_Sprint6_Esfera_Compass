module Pages

    class PointsPage < SitePrism::Page
        
        set_url('/p/compra-de-pontos/') 

        element :button_adition, 'button[class="molecule-prod-quant-btn-add js-molecule-prod-quant-btn-add"]'
        element :text_img, 'div[class="-pointsmoneytext"] strong'
        element :add_coupon, 'div[class="-cupomtextblock js-buy-points-cupom-open"] span:first-of-type'
        element :input_coupon, '.-inputcupompoints'
        element :button_apply_coupon, '.-btnapplycupom'
        element :text_error, '.util-error-message'
        element :continue_button, 'div[class="-pointswidget"] button'

    end
end