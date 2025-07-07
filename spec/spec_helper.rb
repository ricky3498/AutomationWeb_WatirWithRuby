require 'watir'
require 'webdrivers'

RSpec.configure do |config|
  config.before(:each) do
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
  end

  config.after(:each) do
    @browser.quit
  end
end
