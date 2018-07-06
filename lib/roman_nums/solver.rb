
module RomanNums
  class Solver

    def convert(args = {})
      arabic_nums = args.fetch(:arabic_nums, nil)

      if !arabic_nums.present?
        arabic_nums = sample_arabic_nums
      else
        if arabic_nums.is_a?(::String)
          arabic_nums = arabic_nums.scan(/\d+/)
          arabic_nums.map! { |num| num.to_i }
        end
      end

      roman_nums = arabic_nums.map { |num| convert_to_modern(num) }
    end


    def to_classic(arabic)
      answer = arabic / 1000 # 1
      remainder = arabic % 1000 # 1
      thousands = "M" * answer

      answer = remainder / 500 # 1
      remainder = arabic % 500 # 1
      five_hundreds = "D" * answer

      answer = remainder / 100 # 1
      remainder = arabic % 100 # 1
      hundreds = "C" * answer

      answer = remainder / 50 # 1
      remainder = arabic % 50 # 1
      fifties = "L" * answer

      answer = remainder / 10 # 1 top of logic
      remainder = arabic % 10 # 6
      tens = "X" * answer

      answer = remainder / 5 # 1
      remainder = arabic % 5 # 1
      fives = "V" * answer

      answer_n = remainder / 1 #
      ones = "I" * answer_n

      roman_num = thousands + five_hundreds + hundreds + fifties + tens + fives + ones
    end


    def convert_to_modern(arabic)
      classic_rom = to_classic(arabic)
      modern_conversions = {'DCCCC'=> 'CM', 'CCCC'=> 'CD', 'LXXXX'=> 'XC', 'XXXX'=> 'XL', 'VIIII'=> 'IX', 'IIII'=> 'IV'}

      modern_rom = classic_rom
      modern_conversions.each do |k,v|
        if classic_rom.include?(k)
          modern_conversions = classic_rom.gsub(k,v)
        end
      end

      same = false if modern_rom == classic_rom
      converted_hsh = { arabic: arabic,
                        classic_rom: classic_rom,
                        modern_rom: modern_rom,
                        same: same || true
                      }
    end

    def sample_arabic_nums
      numbers = (0..20).map { rand(999..9999) }
    end



  end
end
