jQuery ->
  if $("#epiceditor").length > 0
    editor = new EpicEditor({basePath: '/EpicEditor-v0.2.2', textarea: "post_content"}).load()
