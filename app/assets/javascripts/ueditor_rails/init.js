//= require ueditor_rails/_config
//= require ueditor/editor_all
//= require_self

$(function() {
  if(window.UEDITOR_FIELDS !== undefined) {
    for(var i=0; i<window.UEDITOR_FIELDS.length; i++) {
      var f = window.UEDITOR_FIELDS[i];
      UE.getEditor(f['id'], f['opt']);
    }
  }
});
