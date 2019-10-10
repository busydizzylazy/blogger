$(document).on 'turbolinks:load', ->
  $('[data-provider="summernote"]').each ->
    $(this).summernote
      height: 450,
      minHeight: 450,
      maxHeight: 450
