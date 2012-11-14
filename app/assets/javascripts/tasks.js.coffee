  $(document).on 'click', '#task_complete', ->
    $('#completed_at').toggle()
  $(document).on 'click', '#task_reccuring', ->
    $('#interval').toggle()

