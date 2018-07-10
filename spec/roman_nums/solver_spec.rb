# rspec spec/roman_nums/solver_spec.rb

require 'spec_helper'

describe 'Solver' do
  let(:solver_obj) { RomanNums::Solver.new }
  # before { solver_obj.inst = inst }

  describe '#convert' do
    let(:args) do
      { arabic_nums: [3994, 4336, 9233, 1376, 8851, 6222, 1839, 3570, 8660, 9018, 4448, 1827, 9753, 2738, 8386, 9867, 1698, 9022, 8631, 8382, 4752] }
    end
    let(:roman_nums) do
      [
        { arabic: 3994, classic_rom: 'MMMDCCCCLXXXXIIII', modern_rom: 'MMMDCCCCLXXXXIIII', same: true },
        { arabic: 4336, classic_rom: 'MMMMCCCXXXVI', modern_rom: 'MMMMCCCXXXVI', same: true },
        { arabic: 9233, classic_rom: 'MMMMMMMMMCCXXXIII', modern_rom: 'MMMMMMMMMCCXXXIII', same: true },
        { arabic: 1376, classic_rom: 'MCCCLXXVI', modern_rom: 'MCCCLXXVI', same: true },
        { arabic: 8851, classic_rom: 'MMMMMMMMDCCCLI', modern_rom: 'MMMMMMMMDCCCLI', same: true },
        { arabic: 6222, classic_rom: 'MMMMMMCCXXII', modern_rom: 'MMMMMMCCXXII', same: true },
        { arabic: 1839, classic_rom: 'MDCCCXXXVIIII', modern_rom: 'MDCCCXXXVIIII', same: true },
        { arabic: 3570, classic_rom: 'MMMDLXX', modern_rom: 'MMMDLXX', same: true },
        { arabic: 8660, classic_rom: 'MMMMMMMMDCLX', modern_rom: 'MMMMMMMMDCLX', same: true },
        { arabic: 9018, classic_rom: 'MMMMMMMMMXVIII', modern_rom: 'MMMMMMMMMXVIII', same: true },
        { arabic: 4448, classic_rom: 'MMMMCCCCXXXXVIII', modern_rom: 'MMMMCCCCXXXXVIII', same: true },
        { arabic: 1827, classic_rom: 'MDCCCXXVII', modern_rom: 'MDCCCXXVII', same: true },
        { arabic: 9753, classic_rom: 'MMMMMMMMMDCCLIII', modern_rom: 'MMMMMMMMMDCCLIII', same: true },
        { arabic: 2738, classic_rom: 'MMDCCXXXVIII', modern_rom: 'MMDCCXXXVIII', same: true },
        { arabic: 8386, classic_rom: 'MMMMMMMMCCCLXXXVI', modern_rom: 'MMMMMMMMCCCLXXXVI', same: true },
        { arabic: 9867, classic_rom: 'MMMMMMMMMDCCCLXVII', modern_rom: 'MMMMMMMMMDCCCLXVII', same: true },
        { arabic: 1698, classic_rom: 'MDCLXXXXVIII', modern_rom: 'MDCLXXXXVIII', same: true },
        { arabic: 9022, classic_rom: 'MMMMMMMMMXXII', modern_rom: 'MMMMMMMMMXXII', same: true },
        { arabic: 8631, classic_rom: 'MMMMMMMMDCXXXI', modern_rom: 'MMMMMMMMDCXXXI', same: true },
        { arabic: 8382, classic_rom: 'MMMMMMMMCCCLXXXII', modern_rom: 'MMMMMMMMCCCLXXXII', same: true },
        { arabic: 4752, classic_rom: 'MMMMDCCLII', modern_rom: 'MMMMDCCLII', same: true }
      ]
    end

    it 'convert' do
      expect(solver_obj.convert(args)).to eql(roman_nums)
    end
  end

  describe '#to_classic' do
    let(:arabic) { 3994 }
    let(:roman_num) { 'MMMDCCCCLXXXXIIII' }

    it 'to_classic' do
      expect(solver_obj.to_classic(arabic)).to eql(roman_num)
    end
  end

  describe '#convert_to_modern' do
    let(:arabic) { 3994 }
    let(:converted_hsh) do
      { arabic: 3994, classic_rom: 'MMMDCCCCLXXXXIIII', modern_rom: 'MMMDCCCCLXXXXIIII', same: true }
    end

    it 'convert_to_modern' do
      expect(solver_obj.convert_to_modern(arabic)).to eql(converted_hsh)
    end
  end
end
