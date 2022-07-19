require 'cucumber'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'selenium-webdriver'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br'