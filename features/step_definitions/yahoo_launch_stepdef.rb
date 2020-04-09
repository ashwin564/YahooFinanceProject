require 'watir'

Given("User opened YahooFinance") do 
    yahoo.visit
end

Then("YahooFinance should display title {string}") do |string|
    expect(yahoo.page_title==string).to be true
    puts yahoo.page_title
end

When("User search {string}") do |string|
    yahoo.search_field_opt string
    yahoo.search_button_opt
end

Then("YahooFinance should return results") do
     expect(yahoo.text_field_result_opt.include?("State Bank of India")).to be true
end

When("User click on My Portfolio option") do 

end

Then("User should see YahooFinance heading") do

end