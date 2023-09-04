module Pages
    class CartPage < SitePrism::Page
        set_url '/#/shoppingCart'

        element :label_quantity, '.quantityMobile .ng-binding' 
    end
end