require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for subtract$/) do
  browser.goto "#{url}/subtract"
end

Given(/^I fill in '(\d+)' for 's_first'$/) do |number|
  browser.text_field(:id => 's_first').set number
end

Given(/^I fill in '(\d+)' for 's_second'$/) do |number|
  browser.text_field(:id => 's_second').set number
end

Given(/^I click on 'Subtract'$/) do
  browser.button(:id => 'subtract_button').click
end

Then(/^the difference should be '(\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 's_answer').text, answer)
end