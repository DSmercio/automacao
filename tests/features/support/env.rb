require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require_relative 'helper.rb'
require_relative 'page_helper.rb'


AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)
World(Pages)


#Configurar o tipo de browser
Capybara.register_driver :selenium do |app|
    option = ::Selenium::WebDriver::Chrome::Options.new
    option.args << '--no-sandbox'
    option.args << '--headless'
    option.args << '--disable-gpu'
    option.args << '--window-size=1600,1024'
    option.args << 'disable-dev-shm-usage'
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
end


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
end