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

  var tweet_ids = ['653027251475189760', '653021875883261952', '653006289568530432'];

  $.each(tweet_ids, function(idx, tweet_id) {
    var elem = $('.tweet' + idx.toString());
    twttr.widgets.createTweet(tweet_id.toString(), elem[0], {
      cards: 'hidden', conversation: 'none', theme: 'light'
    });
  });

  // no idea why this doesn't work...
  // var route = Routes.latest_twitter_path({account: 'cardinals'});
  // $.get(route).done(function(data) {
  //   $.each(data['ids'], function(idx, tweet_id) {
  //     var elem = $('.tweet' + idx.toString());

  //     twttr.widgets.createTweet(tweet_id.toString(), elem[0], {
  //       cards: 'hidden', conversation: 'none', theme: 'light'
  //     });
  //   });
  // });

  // callApi = function(api, type, params, cbFunc, progressCbFunc) {

    // This function makes the actaul ajax call to the http api.
    // Note: progressCbFunc is optional. It can be used for api calls
    //       that return large amounts of data in chunks. It receives
    //       an event param that contains a property "loaded" which is the
    //       number of bytes that have been received. It is called each
    //       time a new chunk of data is received from the server.

    // var ajaxReq = {
    //     url:"http://" + api,
    //     // :version/:resource/:method?apikey=:yourkey
    //     type:      type,
    //     data:      params,
    //     success:   cbFunc,
    //     error: function(object, info){
    //         // alert('Error talking to server');
    //         }
    //     };
    //     if (progressCbFunc !== undefined)
    //     {
    //         if (ajaxReq.xhrFields === undefined)
    //         {
    //             ajaxReq["xhrFields"] = {onprogress: progressCbFunc};
    //         }
    //         else
    //         {
    //             ajaxReq.xhrFields = {onprogress: progressCbFunc};
    //         } 
    //     }
    //     return $.ajax(ajaxReq);
    // };

    // callApi("http://api.espn.com/");
});
