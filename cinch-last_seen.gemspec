Gem::Specification.new do |s|
  s.name = 'cinch-last_seen'
  s.version = '0.0.2'
  s.summary = 'A "last seen" plugin for the Cinch framework'
  s.description = 'A "last seen" plugin for the Cinch framework'
  s.authors = ['Dominik Honnef']
  s.email = ['dominikh@fork-bomb.org']
  s.homepage = 'http://rubydoc.info/github/cinchrb/cinch-last_seen'
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir['LICENSE', 'README.md', '{lib,examples}/**/*']
  s.add_dependency("cinch", "~> 2.0")
end
