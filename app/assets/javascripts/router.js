// For more information see: http://emberjs.com/guides/routing/

App.Router.map(function() {
  this.route('index', { path: '/' });

  this.resource('users', function() {
    this.route('new');
  });
});
