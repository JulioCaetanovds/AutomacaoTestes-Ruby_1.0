require 'capybara/dsl'

class GoogleHome
    include Capybara::DSL

    def load
        visit('https://www.google.com.br/')
    end

    def search_for(query)
        find("textarea[name=q]").set query
        click_button 'Pesquisa Google'
    end
end