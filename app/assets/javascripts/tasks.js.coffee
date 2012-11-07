ready = ->
  $(document).on 'click', '#task_complete', ->
    $('#completed_at').toggle()
  $(document).on 'click', '#task_reccuring', ->
    $('#interval').toggle()

$(document).ready(ready)
$(document).on('page:load', ready)