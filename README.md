# RomanNums

[![Build Status](https://travis-ci.org/4rlm/roman_nums.svg?branch=master)](https://travis-ci.org/4rlm/roman_nums)
[![Gem Version](https://badge.fury.io/rb/roman_nums.svg)](https://badge.fury.io/rb/roman_nums)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

#### Converts your input numbers to roman numerals.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'roman_nums'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roman_nums

## Usage

1. Add your arabic_nums to a hash with `:arabic_nums` symbol key and numbers as an array for the value, then pass the arguments to `RomanNums.convert(args)` like the example below.  If you don't pass any args, and just run `RomanNums.convert` it will return sample data for testing.

```
arabic_nums = [3994, 4336, 9233, 1376, 8851, 6222, 1839, 3570, 8660, 9018, 4448, 1827, 9753, 2738, 8386, 9867, 1698, 9022, 8631, 8382, 4752]

number_hashes = RomanNums.convert(arabic_nums: arabic_nums)
```

2. Results as Array of Hashes:

```
[
  {:arabic=>3994, :classic_rom=>"MMMDCCCCLXXXXIIII", :modern_rom=>"MMMDCCCCLXXXXIIII", :same=>true},
   {:arabic=>4336, :classic_rom=>"MMMMCCCXXXVI", :modern_rom=>"MMMMCCCXXXVI", :same=>true},
   {:arabic=>9233, :classic_rom=>"MMMMMMMMMCCXXXIII", :modern_rom=>"MMMMMMMMMCCXXXIII", :same=>true},
   {:arabic=>1376, :classic_rom=>"MCCCLXXVI", :modern_rom=>"MCCCLXXVI", :same=>true},
   {:arabic=>8851, :classic_rom=>"MMMMMMMMDCCCLI", :modern_rom=>"MMMMMMMMDCCCLI", :same=>true},
   {:arabic=>6222, :classic_rom=>"MMMMMMCCXXII", :modern_rom=>"MMMMMMCCXXII", :same=>true},
   {:arabic=>1839, :classic_rom=>"MDCCCXXXVIIII", :modern_rom=>"MDCCCXXXVIIII", :same=>true},
   {:arabic=>3570, :classic_rom=>"MMMDLXX", :modern_rom=>"MMMDLXX", :same=>true},
   {:arabic=>8660, :classic_rom=>"MMMMMMMMDCLX", :modern_rom=>"MMMMMMMMDCLX", :same=>true},
   {:arabic=>9018, :classic_rom=>"MMMMMMMMMXVIII", :modern_rom=>"MMMMMMMMMXVIII", :same=>true},
   {:arabic=>4448, :classic_rom=>"MMMMCCCCXXXXVIII", :modern_rom=>"MMMMCCCCXXXXVIII", :same=>true},
   {:arabic=>1827, :classic_rom=>"MDCCCXXVII", :modern_rom=>"MDCCCXXVII", :same=>true},
   {:arabic=>9753, :classic_rom=>"MMMMMMMMMDCCLIII", :modern_rom=>"MMMMMMMMMDCCLIII", :same=>true},
   {:arabic=>2738, :classic_rom=>"MMDCCXXXVIII", :modern_rom=>"MMDCCXXXVIII", :same=>true},
   {:arabic=>8386, :classic_rom=>"MMMMMMMMCCCLXXXVI", :modern_rom=>"MMMMMMMMCCCLXXXVI", :same=>true},
   {:arabic=>9867, :classic_rom=>"MMMMMMMMMDCCCLXVII", :modern_rom=>"MMMMMMMMMDCCCLXVII", :same=>true},
   {:arabic=>1698, :classic_rom=>"MDCLXXXXVIII", :modern_rom=>"MDCLXXXXVIII", :same=>true},
   {:arabic=>9022, :classic_rom=>"MMMMMMMMMXXII", :modern_rom=>"MMMMMMMMMXXII", :same=>true},
   {:arabic=>8631, :classic_rom=>"MMMMMMMMDCXXXI", :modern_rom=>"MMMMMMMMDCXXXI", :same=>true},
   {:arabic=>8382, :classic_rom=>"MMMMMMMMCCCLXXXII", :modern_rom=>"MMMMMMMMCCCLXXXII", :same=>true},
   {:arabic=>4752, :classic_rom=>"MMMMDCCLII", :modern_rom=>"MMMMDCCLII", :same=>true}
 ]
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/4rlm/roman_nums. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RomanNums project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/4rlm/roman_nums/blob/master/CODE_OF_CONDUCT.md).
