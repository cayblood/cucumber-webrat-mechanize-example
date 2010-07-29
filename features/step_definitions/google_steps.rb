When /^I Google for ['"](.*)['"]$/ do |query|
  a = Mechanize.new
  a.get('http://www.google.com/ncr') do |page|
    search_result = page.form_with(:name => 'f') do |search|
      search.q = query
      @result = search.submit
    end
  end
end

Then /^I should see search results about (.*)$/ do |term|
  @result.body.should =~ /#{term}/
end