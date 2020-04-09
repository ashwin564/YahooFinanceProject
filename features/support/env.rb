require 'watir'

module WebUIObject
    browser = Watir::Browser.new(:chrome)
    define_method(:yahoo) { @yahoo ||= (GoogleHomePageWebUI.new(browser)) }
end

World(WebUIObject)