jQuery ->
  $('#content_tag_list').tokenInput '/tags/index.json'
    theme: 'facebook'
    prePopulate: $('#content_tag_list').data('load')