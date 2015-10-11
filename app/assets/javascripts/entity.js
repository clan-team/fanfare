$(document).ready(function() {
  $('.follow-btn', '.entity').click(function() {
    var button = $(this)
    var parent = button.closest('.entity');
    var entityId = $(parent).data('entity-id');
    var userId = $('body').data('user-id');
    var route = Routes.user_entities_path({user_id: userId, format: 'json'});
    var data = {id: entityId};
    debugger;

    button.prop('disabled', true);

    $.post(route, data)
      .fail(function(err) {
        button.prop('disabled', false);
      });
  });
});
