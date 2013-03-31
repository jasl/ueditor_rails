# UEditor Rails

UEditor integration with Rails

## Demo
Go to ```test/dummy``` and ```rails s```, remember ```bundle``` first.

## Installation
```rails g ueditor_rails:install```

## Configure
See ```app/assets/javascripts/ueditor_config.js.erb``` for detail.

## Using
```f.ueditor_text :body```

```ueditor_text_tag 'test2', 'text here'```

```ueditor_text_tag 'test1', 'text here', :config => { :toolbars => [["bold","italic","underline"]] }```


## License
This project rocks and uses [MIT-LICENSE](http://jasl.mit-license.org/). Jasl
