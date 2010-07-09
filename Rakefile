$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'rubygems'

begin
  require 'cucumber'
  require 'cucumber/rake/task'
 
  Cucumber::Rake::Task.new do |t|
    t.cucumber_opts = %w{--format pretty}
  end
rescue LoadError
  desc 'Cucumber rake task not available'
  task :cucumber do
    abort 'Cucumber rake task is not available. Be sure to install cucumber as a gem or plugin'
  end
end

task :default => :cucumber