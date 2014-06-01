# Underscore Params

Forces all param keys in Rails to be underscored. eg

    {'anObject' => 'value'} turns into {'an_object' => 'value'}

Will underscore all param keys including deeply nested ones.

Helpful if you do not have control over the view layer / what params are being sent to the application and don't want to complicate controllers / models with conversion logic.

## Installation

Add this line to your application's Gemfile:

    gem 'underscore_params'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install underscore_params

## Usage

* Just reference in Gemfile
* Works for Rails 4+ (not tested on earlier versions)

## Contributing

1. Fork it ( http://github.com/ansonK/underscore_params/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
