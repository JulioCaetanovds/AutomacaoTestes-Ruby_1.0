# Projeto de Automação de Testes usando Cucumber e Capybara

## Sobre o Projeto

Este projeto consiste na automação de alguns testes da página web do e-commerce: [AdvantageOnlineShopping](https://advantageonlineshopping.com/#/)

## :desktop_computer: Tecnologias Utilizadas

* ```Visual Studio Code (1.81.1)```
* ```ruby (2.5.3)```
* ```rspec (3.12.0)```
* ```cucumber (7.1.0)```
* ```capybara (3.35.3)```
* ```faker (2.22.0)```
* ```pry (0.14.2)```
* ```selenium-webdriver (3.142.7)```
* ```site_prism (3.7.3)```

## 💾 Pré-requisitos

Antes de começar, certifique-se de ter instalado os seguintes pré-requisitos:

- Ruby: [Instalação Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
- ChromeDriver: [Download ChromeDriver](https://sites.google.com/chromium.org/driver/)

## :memo: Instalção do ambiente

Para começar é preciso fazer a intalção do bundle de gem's, por meio do terminal de comando:

```
bundle install
```

## :white_check_mark: Executando o Projeto

Para executar todos os testes implementados vamos executar o seguinte comando no terminal:

```
bundle exec cucumber -p default
```

Se você quiser executar algum teste especifico execute o seguinte comando no terminal:

```
bundle exec cucumber -p default -t@TAG
```
As TAG's disponiveis para esse projeto são:
* **@regression**
  * **@search**
    * **@search_for_product**
    * **@search_for_different_products**
  * **@pdp**
    * **@change_color_pdp**
    * **@increase_product_quantity**
      * **@increase_product_quantity_only_pdp**
      * **@increase_product_quantity_validate_cart**
    * **@add_product_to_cart_pdp**

## Contato

<a href = "mailto:juliocaetanovds@gmail.com"><img loading="lazy" src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
<a href="https://www.linkedin.com/in/juliocaetano15/" target="_blank"><img loading="lazy" src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
