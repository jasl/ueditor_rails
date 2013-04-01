//= require ueditor_rails/_config
//= require ueditor/editor_all
//= require_self

$(function() {
  if(window.UEDITOR_FIELDS !== undefined) {
    for(var i in window.UEDITOR_FIELDS) {
      var f = window.UEDITOR_FIELDS[i];
      UE.getEditor(f['id'], f['opt']);
    }
  }
});
