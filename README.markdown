# UEditor Rails

UEditor integration with Rails

## Demo
Go to ```test/dummy``` and ```rails s```, remember ```bundle``` first.

## Installation
Add the gem to your Gemfie ```gem 'ueditor_rails', :git => 'https://github.com/jasl/ueditor_rails.git'```

and run```rails g ueditor_rails:install```

## Configure
See ```app/assets/javascripts/ueditor_config.js.erb``` for detail.

## Using
```f.ueditor_text :body```

```ueditor_text_tag 'test2', 'text here'```

```ueditor_text_tag 'test1', 'text here', :id => 'xxxx', :width => 500, :toolbars => [["bold","italic","underline"]]```

The option can be any which in ```ueditor_config.js.erb```

## License
This project rocks and uses [MIT-LICENSE](http://jasl.mit-license.org/). Jasl
