$(document).ready(function() {
  $('.follow-btn', '.entity').click(function() {
    var button = $(this)
    var parent = button.closest('.entity');
    var entityId = $(parent).data('entity-id');
    var userId = $('body').data('user-id');
    var route = Routes.user_entities_path({user_id: userId, format: 'json'});
    var data = {id: entityId};

    button.slideUp({duration: 200});

    $.post(route, data)
      .fail(function(err) {
        button.slideDown({duration: 200});
      });
  });

  $('.tab-read-it').click(function() {
    $('.tab-live-it').removeClass('active');
    $('.tab-read-it').addClass('active');
    $('.live-it-contents').addClass('inactive');
    $('.read-it-contents').removeClass('inactive');
  });

  $('.tab-live-it').click(function() {
    $('.tab-live-it').addClass('active');
    $('.tab-read-it').removeClass('active');
    $('.live-it-contents').removeClass('inactive');
    $('.read-it-contents').addClass('inactive');
  });
});
