#language pt

Funcionalidade: Busca
    COMO um usuario do Ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que estaja na home
# Utilizar contexto como boa pratica sempre que o "dado" se repetir
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resulatados na busca

    Esquema do Cenário: Buscar por produtos existente
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resulatados na busca

        Exemplos:
        | produto    |
        | Speakers   |
        | Tablets    |
        | Lapstops   |
        | Mice       |
        | Headphones |
# primeira execução = Speakers
# segunda execução = Tablets
# terceira execução = Laptops
# ...