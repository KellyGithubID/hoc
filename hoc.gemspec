# encoding: utf-8
#
# Copyright (c) 2014-2019 Teamed.io
# Copyright (c) 2014-2019 Yegor Bugayenko
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hoc/version'

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new('>= 0')
  end
  s.rubygems_version = '2.2.2'
  s.required_ruby_version = '>= 1.9.3'
  s.name = 'hoc'
  s.version = HOC::VERSION
  s.license = 'MIT'
  s.summary = 'Hits Of Code'
  s.description = 'Collects information about hits-of-code'
  s.authors = ['Yegor Bugayenko']
  s.email = 'yegor256@gmail.com'
  s.homepage = 'http://github.com/teamed/hoc'
  s.files = `git ls-files`.split($RS)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w(README.md LICENSE.txt)
  s.add_runtime_dependency 'slop', '~>4.4'
  s.add_development_dependency 'rake', '12.0.0'
  s.add_development_dependency 'codecov', '0.1.10'
  s.add_development_dependency 'rdoc', '3.12.1'
  s.add_development_dependency 'cucumber', '1.3.11'
  s.add_development_dependency 'minitest', '5.4'
  s.add_development_dependency 'rubocop', '0.61.0'
  s.add_development_dependency 'rubocop-rspec', '1.5.1'
  s.add_development_dependency 'rspec-rails', '2.13'
end
