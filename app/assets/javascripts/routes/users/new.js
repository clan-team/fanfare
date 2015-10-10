App.UsersNewRoute = Ember.Route.extend({
  model: function() {
    this.store.createRecord('entity');
  }
});
