# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Selenium::WebDriver::Chrome.driver_path= "/app/.apt/usr/bin/google-chrome/chromedriver"


driver = Selenium::WebDriver.for :chrome, 
  :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome({
    'chromeOptions' => {
    	'binary' => ENV.fetch('GOOGLE_CHROME_SHIM', nil),
      'args' => ["--headless"]
    }
  })
