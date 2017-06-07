# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Selenium::WebDriver::Chrome.driver_path= "/app/.apt/usr/bin/google-chrome/chromedriver"


# driver = Selenium::WebDriver.for :chrome, 
#   :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome({
#     'chromeOptions' => {
#     	'binary' => ENV.fetch('GOOGLE_CHROME_SHIM', nil),
#       'args' => ["--headless"]
#     }
#   })


# chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil)

# chrome_opts = chrome_bin ? { "chromeOptions" => { "binary" => "/app/.apt/usr/bin/google-chrome" } } : {}

# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(
#      app,
#      browser: :chrome,
#      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
#      	'chromeOptions' => {
#     	'binary' => "/app/.apt/usr/bin/google-chrome",
# 	      'args' => [
# 	      	"--headless"
# 	      ]
# 	    }
#      )
#   )
# end

# Capybara.configure do |config|
#   config.run_server = false
#   config.default_driver = :chrome
#   config.app_host = 'https://www.google.com' # change url
# end


# Selenium::WebDriver::Chrome.driver_path="/chromedriver"

# driver = Selenium::WebDriver.for :chrome, 
#   :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome({
#     'chromeOptions' => {
#     	'binary' => "/app/.apt/usr/bin/google-chrome",
#       'args' => [
#       	"--headless"
#       ]
#     }
#   })
# # "load-extension=/Users/Darwin/Downloads/extension-chrome-"
# b = Watir::Browser.new driver
# b.goto 'https://www.linkedin.com/'
# b.text_field(:class =>'login-email').set 'parisismagic4@hotmail.com'
# b.text_field(:id => 'login-password').set "LoveWinou"
# pry(binding)
# b.button(:class => 'submit-button').click
Selenium::WebDriver::PhantomJS.path = "/vendor/phantomjs/bin/phantomjs"
capabilities = Selenium::WebDriver::Remote::Capabilities.phantomjs("phantomjs.page.settings.userAgent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14", "phantomjs.page.settings.viewportSize" => "width: 1280, height: 3024")
driver = Selenium::WebDriver.for :phantomjs, :desired_capabilities => capabilities

driver.navigate.to 'https://www.linkedin.com/'

pry(binding)
driver.find_element(class: 'login-email').send_keys "parisismagic4@hotmail.com"
driver.find_element(id: 'login-password').send_keys "LoveWinou"
driver.find_element(class: 'submit-button').submit()
sleep(5)

driver.navigate.to "https://www.linkedin.com/in/annil-chandra-8110606/"
driver.find_element(:class => "contact-see-more-less").click()
driver.save_screenshot('screenshot.png')
# # b.scroll.to :bottom 
# # puts "scrolling"
# sleep(3)

# b.screenshot.save ("linkedin3.png")
