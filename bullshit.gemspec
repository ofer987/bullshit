
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bullshit/version'

Gem::Specification.new do |spec|
  spec.name          = 'bullshit'
  spec.version       = Bullshit::VERSION
  spec.authors       = ['Dan Jakob Ofer']
  spec.homepage      = 'https://github.com/ofer987/bullshit'
  spec.email         = ['dan@ofer.to']

  spec.summary       = %q{Generate corporate-speak (also known as bullshit)}
  spec.description   = %q{Generate corporate-speak (also known as bullshit)}
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

end
