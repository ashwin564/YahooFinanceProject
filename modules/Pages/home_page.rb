require 'watir'

class GoogleHomePageWebUI
    def initialize(browser)
      @browser=browser
      @browser.driver.manage.window.maximize
      @browser.driver.manage.timeouts.implicit_wait = 10
      Watir.default_timeout = 10
    end
    
    def visit
        @browser.goto 'https://in.finance.yahoo.com/'
    end
  
    def page_title
      @browser.title
    end

    def search_field_opt string
      search_field.send_keys string
    end
    
    def search_button_opt
      search_button.click
    end
    
    def text_field_result_opt
      text_field_result
    end


    private

    def search_field
      @browser.text_field(:xpath => "//*[@id='yfin-usr-qry']")
    end

    def search_button
      @browser.button(:xpath => "//*[@id='search-button']")
    end


    def text_field_result
      @browser.element(:xpath => "//div>h1")
    end

  
  end