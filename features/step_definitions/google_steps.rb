When /^I search for ['"](.*)['"]$/ do |query|
  fill_in('q', :with => query)
  click_button('Google Search')
end

Then /^I should see search results about (.*)$/ do |term|
  response_body.should include(term)
end