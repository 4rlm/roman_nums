# rspec spec/roman_nums/solver_spec.rb

require 'spec_helper'

describe 'Solver' do
  let(:solver_obj) { RomanNums::Solver.new }
  # before { solver_obj.inst = inst }

  describe '#meth_name' do
    let(:input) {}
    let(:output) {}

    it 'meth_name' do
      binding.pry
      expect(solver_obj.meth_name(input)).to eql(output)
    end
  end
end