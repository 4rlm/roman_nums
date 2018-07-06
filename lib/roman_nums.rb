require "roman_nums/version"

require "roman_nums/solver"
# require 'mechanizer'
# require 'scrub_db'
require 'pry'

module RomanNums

  def self.convert(args={})
    number_hashes = self::Solver.new.convert(args)
  end

end
