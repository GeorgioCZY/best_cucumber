def make_driver(profile=nil,platform)
  if profile.nil?
    profile = Selenium::WebDriver::Firefox::Profile.new
  end
  if platform == 'mobile'
    profile['general.useragent.override'] = 'Mozilla/5.0 (iPhone; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10'
  end
  @driver = Selenium::WebDriver.for(
      :firefox,
      :profile => profile)

  @driver.manage.timeouts.implicit_wait = 90
  @driver.manage.timeouts.page_load = 300
  @driver.manage.timeouts.script_timeout = 60
end

Before('@selenium_webdriver') do
  make_driver(nil,'desktop')
end

After('@selenium_webdriver') do
  @driver.quit
end

Before('@mobile') do
  make_driver(nil,'mobile')
end

After('@mobile') do
  @driver.quit
end