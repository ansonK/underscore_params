# Underscore Params

Forces all param keys in Rails to be underscored. eg

    {'anObject' => 'value'} turns into {'an_object' => 'value'}

Will underscore all param keys including deeply nested ones.

Helpful if you do not have control over the view layer / what params are being sent to the application and don't want to complicate controllers / models with conversion logic.

Many javascript apps / scripts have the convention of their model attributes to be written using [camelCase](http://en.wikipedia.org/wiki/CamelCase) while ruby prefers the [snake_case](http://en.wikipedia.org/wiki/Snake_case) convention. This gem helps smooth out the inconsistency.

So instead of doing this in controllers:

    params[:objectName] || params[:object_name]

it can be simply

    params[:object_name]

regardless of what format the client sends

## Installation

Add this line to your application's Gemfile:

    gem 'underscore_params'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install underscore_params

## Usage

* Just reference in Gemfile
* Works for Rails 4+ (not tested on earlier versions). YMMV.

## Contributing

1. Fork it ( http://github.com/ansonK/underscore_params/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Underscore Params is released under the [MIT License](http://www.opensource.org/licenses/MIT).
