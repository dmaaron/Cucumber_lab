Given(/^I visit the calculator page for add$/) do
  visit "http://localhost:3000/add" # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'first'$/) do |number|
	fill_in 'first', :with => number
end

Given(/^I fill in '(\d+)' for 'second'$/) do |number|
	fill_in 'second', :with => number
end

Given(/^I click on 'Add'$/) do
	click_button('Add')
end

Then(/^I should see '(\d+)'$/) do |answer|
	within("#answer") do
    	page.has_content?(answer)
  	end
end