require 'watir'
require 'byebug'
Given("website is {string}") do |string|
  @site = string
  @browser = Watir::Browser.new :firefox
  @browser.goto @site
end

Then("i see login page") do
  byebug
  fail unless @browser.title == "Sign in/Create account | Berkeley Group"
end

Then("i enter user name {string}") do |string|
  if @browser.text_field(:id => "MYHOMESIGNIN_EMAIL").present?
    @browser.text_field(:id => "MYHOMESIGNIN_EMAIL").set(string)
  else
    fail
  end
end

When("i click on next button after entering the user name") do
  if @browser.button(:id => "MYHOMESIGNIN_FORMACTION_FINISH").exists?
    @browser.button(:id => "MYHOMESIGNIN_FORMACTION_FINISH").click
  end
end

Then("i see password box") do
  sleep(3)
  fail unless @browser.text_field(:id => "MYHOMESIGNIN_PASSWORD").present?
end

Then("i fill password as {string}") do |string|
  @browser.text_field(:id => "MYHOMESIGNIN_PASSWORD").set(string)
  @browser.button(:id => "MYHOMESIGNIN_FORMACTION_FINISH").click
end

Then("i get landed to dashboard and see my name appearing on page with Welcome tag") do
  puts @browser.element(:xpath => "//*[contains(@class,'span12')]").text
  sleep(5)
  @browser.quit
  puts "Successfully verified the auth for a user for given creds"
end
