#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuario do Ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que estaja na home
        # Utilizar contexto como boa pratica sempre que o "dado" se repetir

    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_different_products
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

        Exemplos:
        | produto    |
        | Speakers   |
        | Tablets    |
        | Laptops    |
        | Mice       |
        | Headphones |