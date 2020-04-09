Feature: Yahoo Seach Functionality

Scenario: User can see the title of of a YahooFinance 
    Given User opened YahooFinance
    Then YahooFinance should display title "Yahoo Finance – stock market live, quotes, business & finance news"
   
Scenario: User can search for a specific topic on YahooFinance 
    When User search "State Bank of India"
    Then YahooFinance should return results

Scenario: User can able to click on My Portfolio option
   When User click on My Portfolio option
   Then User should see YahooFinance heading


