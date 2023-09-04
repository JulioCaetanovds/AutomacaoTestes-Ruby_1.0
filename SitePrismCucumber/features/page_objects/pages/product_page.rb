require_relative '../sections/header'

module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        section :header, Sections::Header, 'header'
        elements :colors, '.productColor'
        element :main_image, '#mainImg'
        element :btn_add_product, '.plus'
        element :input_quantity_product, 'input[name="quantity"]'
        element :btn_save_to_cart, 'button[name="save_to_cart"]'
    end
end