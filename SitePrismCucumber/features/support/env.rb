require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    # Forma explicada no vídeo, nao deu certo

    #caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--incognito"]})
    #options = { browser: :chrome, capabilities: caps }
    #Capybara::Selenium::Driver.new(app, options)

    #forma encontrada para dar certo

    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--incognito')
    options.add_argument('--start-maximized')
    options.add_argument('--window-size-1420-835')
    options.add_argument('--ignore-ssl-erros')
    options.add_argument('--disable-gpu')
    options.add_argument('--disable-translate')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-imp-side-painting')
    options.add_argument('--degub_level=3')
    options.add_argument('--acceptInsecureCerts=true')
    options.add_argument('--ignore-certificate-erros')
    options.add_argument('--window-size=1420,835')
    options.add_argument('--disable-popup-blocking')

    if ENV['HEADLESS']
        options.add_argument('--headless')
        options.add_argument('--disable-site-isolation-trials')
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90
    
    puts 'Raising driver'
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10
