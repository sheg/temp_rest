Given /^the system knows about the following posts:$/ do |posts|
  File.open('posts.json', 'w') do |io|
    io.write(posts.hashes.to_json)
  end
end

Given(/^the service is located at "(.*)"$/) do |base_url|
  @base_url = base_url
end

When(/^the client requests GET (.*)$/) do |path|
  @last_response = HTTParty.get(@base_url + path)
end

Then /^the response should be JSON:$/ do |json|
  JSON.parse(@last_response.body).should == JSON.parse(json)
end

Then(/^the response code should return as "([^"]*)"$/) do |response_code|
  @last_response.code.should == response_code.to_i
end
