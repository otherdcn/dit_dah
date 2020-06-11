# DitDah

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dit_dah`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dit_dah'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dit_dah

## Usage

### DitDah::DitDah
A quick rundown of the components:

```ruby

# Create the object
morse_obj = DitDah::DitDah.new

# Set text that you want to convert to morse code
morse_obj.set_input_text "Hello there stranger"

# Get that input text
# Return value is the string split into a character array
text = morse_obj.get_input_text

# Convert/Translate to morse code
morse_code = morse_obj.to_morse_code

# Optionally: you can pass an argument
morse_code2 = morse_obj.to_morse_code "Try me instead"

# View morse_code stored in an array
p morse_code

# Save it to a string
morse_code_string = ""
morse_code.each { |element| morse_code_string << "#{element} "}

# View string
puts morse_code_string

# Retrieve the morse code equivalence from the object
morse_code_var = morse_obj.get_morse_code
p morse_code_var

# MORSE_HASH
# Look at the hash map that translates alphabetical characters to morse code characters
puts DitDah::DitDah::MORSE_HASH

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dit_dah. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/dit_dah/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DitDah project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dit_dah/blob/master/CODE_OF_CONDUCT.md).
