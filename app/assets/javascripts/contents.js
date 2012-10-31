var do_on_load = function() { 
   $('#content_tag_list').tokenInput('/tags/index.json', {
    theme: 'facebook',
    prePopulate: $('#content_tag_list').data('load'),
   });
  
  
}
$(document).ready(do_on_load);
$(window).bind('page:change', do_on_load);

