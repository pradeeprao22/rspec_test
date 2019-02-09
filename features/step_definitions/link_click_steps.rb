Given(/^I am on the homepage$/) do 
   visit root_path
end

When(/^I clcik the provided link$/) do
   click_on "js-click-me"
end

Then(/^I should see the link click confirmation$/) do
   expect(page).to have_content("Link Clicked")
end