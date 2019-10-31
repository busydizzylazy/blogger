# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  # to set summernote object
  # You should change '#post_content' to your textarea input id
  summer_note = $('#content')
  
  $ ->
      ready = ->
          $('[data-provider="summernote"]').each ->
            $(this).summernote
              height: 450,
              minHeight: 450,
              maxHeight: 450,
              focus: true  

  # to call summernote editor
  summer_note.summernote
    # to set options
    minHeight:450,
    maxHeight:450,
    focus: true  


  # to set code for summernote
  summer_note.code summer_note.val()

    
  $(document).ready(ready)
  $(document).on('page:load', ready)
  