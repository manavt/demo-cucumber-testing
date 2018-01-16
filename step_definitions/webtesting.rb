require 'watir'
#gem install watir
Given("that I am on google page") do
  #@site = "https://www.berkeleygroup.co.uk"
  @site = "https://www.berkeleygroup.co.uk/my-home/sign-in"
  @browser = Watir::Browser.new :firefox
  @browser.goto @site
end

When("I click on link its open a search page") do
  puts @browser.title == "xyz"
  fail
end

Then("i type {string} and i see mango images") do |string|
  #@browser.checkbox(:name=> "searchText").set 'asdfad'
  # @browser.element(:xpath => "//*[contains(@id,'frm-search-searchText')]").send_keys('London W14 8QA')
  # @browser.element(:xpath => "//*[contains(@id,'frm-search-btnSubmit')]").click
  # @brower.quit
  @browser.link(:text => "Create account").click
  sleep(3)
  @browser.select_list(:id => "MYHOMECREATEACCOUNT_TITLE").select_value("Mrs")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_FIRSTNAME").set("Urvashi")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_LASTNAME").set("R")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_EMAIL").set("urvashi@gmail.com")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_EMAILCONFIRM").set("urvashi@gmail.com")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_PHONENUMBER").set("3456123789")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_NEWPASSWORD").set("Urvashi")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_CONFIRMNEWPASSWORD").set("Urvashi")
  @browser.text_field(:id => "MYHOMECREATEACCOUNT_FORMACTION_FINISH").click()

end


#@browser.ul(:class => "list lazyloadsearchcontainer").lis.length
#@browser.div(:class => "slider").as.length
# @browser.button(type: 'submit').click
#@browser.link(:text =>"Create account").click

#require 'watir-webdriver' #Include the gem
#slacko = Watir::Browser.new :firefox #You can also use firefox
#slacko.goto 'google.co.in' #Loads the google.com
#slacko.text_field(:name => 'q').set open source #Sets the query field (having class name q) to open source
#slacko.button(:name => 'btnG').click
#puts slack.title #Prints the title of the page
#slacko.screenshot.save open.png #Saves the screenshot of the page to open.png
