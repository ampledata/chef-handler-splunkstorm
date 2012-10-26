Gem::Specification.new do |s|
  s.name = 'chef-handler-splunkstorm'
  s.version = '1.2.0'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Chef Exception & Reporting Handler for Splunk Storm.'
  s.description = [
    'Allows searching and reporting of Chef run',
    'metrics from Splunk Storm.'].join(' ')
  s.author = 'Greg Albrecht'
  s.email = 'gba@splunk.com'
  s.homepage = 'http://ampledata.org/splunk_storm_chef_handler.html'
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob('lib/**/*')
  s.add_runtime_dependency 'json'
  s.add_runtime_dependency 'rest-client'
end
