require_relative '../sections/header.rb'
require_relative '../sections/products.rb'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/search'

        section :header, Sections::Header, 'header'
        # elements :products , 'div.categoryRight li.ng-scope'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'

        def access_product_page(index)
            products[index].name.click
        end
    end
end