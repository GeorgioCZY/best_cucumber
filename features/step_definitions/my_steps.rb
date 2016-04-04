Given(/^I go to url$/) do
  @driver.get BASE_URL
end

And(/^I wait for (\d+) seconds$/) do |arg|
  sleep arg.to_i
end