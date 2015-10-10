App.IndexRoute = Ember.Route.extend({
  model: function() {
    this.store.findAll('entity');
  }
});
