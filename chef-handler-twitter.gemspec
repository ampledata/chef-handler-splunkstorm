Gem::Specification.new do |s|
  s.name = "chef-handler-twitter"
  s.version = "0.2"
  s.platform = Gem::Platform::RUBY
  s.summary = "Tweeting Chef report handler"
  s.description = s.summary
  s.author = "Darrin Eden"
  s.email = "darrin@heavywater.ca"
  s.homepage = "http://github.com/dje/chef-handler-twitter"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
  s.add_runtime_dependency "twitter", "~> 1.5.0"
end
