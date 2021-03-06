# frozen_string_literal: true

require_relative 'lib/tpm/version'

Gem::Specification.new do |spec|
  spec.name          = 'tpm'
  spec.version       = ThroughputMonitor::VERSION
  spec.authors       = ['mattladany']
  spec.email         = ['matt@va-a.com']

  spec.summary       = 'Monitor your network throughput utilization'
  spec.homepage      = 'https://github.com/mattladany/throughput-monitor'
  spec.license       = 'GNU v3.0'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['source_code_uri'] = 'https://github.com/mattladany/throughput-monitor'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  #   into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
