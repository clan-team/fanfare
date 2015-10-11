$(document).ready(function() {
  $('.follow-btn', '.entity').click(function() {
    var button = $(this)
    var parent = button.closest('.entity');
    var entityId = $(parent).data('entity-id');
    var userId = $('body').data('user-id');
    var route = Routes.entities_users_path({format: 'json'});
    var data = {user_id: userId, entity_id: entityId};

    button.prop('disabled', true);

    $.post(route, data)
      .fail(function(err) {
        button.prop('disabled', false);
      });
  });
});
