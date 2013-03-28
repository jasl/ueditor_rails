# UEditor Rails

UEditor integration with Rails

## Demo
go to ```test/dummy``` and ```rails s```, remember ```bundle``` first.

## Installation
```mount UeditorRails::Engine => '/ueditor'``` in your ```config/routes.rb```.

## Using
```f.ueditor_text :body```

```ueditor_text_tag 'test2', 'text here'```

```ueditor_text_tag 'test1', 'text here', :config => { :toolbars => [["bold","italic","underline"]] }```


## License
This project rocks and uses [MIT-LICENSE](http://jasl.mit-license.org/). Jasl
