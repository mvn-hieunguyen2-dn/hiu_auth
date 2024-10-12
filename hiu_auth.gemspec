Gem::Specification.new do |s|
  s.name        = "hiu_auth"
  s.version     = "0.0.5"
  s.summary     = "Simple! Hiu Auth"
  s.description = "A simple auth gem"
  s.authors     = ["Dino Hiu"]
  s.email       = "hiung.work@gmail.com"
  s.files       = ["lib/hiu_auth.rb", "lib/hiu_http.rb"]
  s.homepage    = "https://rubygems.org/gems/hiu_auth"
  s.license       = "MIT"


  # Our dependencies
  s.add_runtime_dependency 'excon', '~> 0.99'
end
