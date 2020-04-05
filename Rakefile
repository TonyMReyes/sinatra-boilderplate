# frozen_string_literal: true

require 'rake/testtask'

desc 'Runs all unit test.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/test*.rb']
end

task default: ['test']