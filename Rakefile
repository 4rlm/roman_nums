require "bundler/gem_tasks"
require "rspec/core/rake_task"

require 'roman_nums'
# require 'webs_criteria'


RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

###################
task :console do
  require 'irb'
  require 'irb/completion'
  require 'roman_nums'
  require "active_support/all"
  ARGV.clear

  results_hash = run_roman_nums
  # binding.pry

  IRB.start
end


def run_roman_nums
  arabic_nums = [3994, 4336, 9233, 1376, 8851, 6222, 1839, 3570, 8660, 9018, 4448, 1827, 9753, 2738, 8386, 9867, 1698, 9022, 8631, 8382, 4752]

  results_hash = RomanNums.convert(arabic_nums: arabic_nums)
end
