module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search #menuSearch'
        element :input_search, '#autoComplete'
        element :close_search, 'img[src$="closeDark.png"]'
        element :btn_cart, '#menuCart'
        element :empty_cart, '.emptyCart'

        def click_and_input_text_for_search(text)
            btn_open_search.click
            input_search.set text
        end
    end
end