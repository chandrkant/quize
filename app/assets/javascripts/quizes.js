
$(function() {
  
  $('form').on('click', '.remove_fields', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('.fieldse').hide();
    return event.preventDefault();
  });

$('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });

$('form').on('click','.is_correct',function(){
  $('.is_correct').each(function(){
    $(this).prop("checked", false);
  });
  $(this).prop("checked", true);
})
});


// jQuery ->
//   $('form').on 'click', '.remove_fields', (event) ->
//     $(this).prev('input[type=hidden]').val('1')
//     $(this).closest('fieldset').hide()
//     event.preventDefault()

//   $('form').on 'click', '.add_fields', (event) ->
//     time = new Date().getTime()
//     regexp = new RegExp($(this).data('id'), 'g')
//     $(this).before($(this).data('fields').replace(regexp, time))
//     event.preventDefault()