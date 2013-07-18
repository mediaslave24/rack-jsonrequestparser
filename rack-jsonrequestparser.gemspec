# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|

  # Description Meta...
  s.name        = 'rack-jsonrequestparser'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Michael']
  s.email       = ['mmaccoffe@gmail.com']
  s.homepage    = 'http://github.com/mediaslave24/rack-jsonrequestparser'

  # Load Paths...
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

end
