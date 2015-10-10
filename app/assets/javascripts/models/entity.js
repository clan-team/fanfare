App.Entity = DS.Model.extend({
  name: DS.attr(),
  location_name: DS.attr(),
  location_lat: DS.attr(),
  location_long: DS.attr(),
  created_at: DS.attr(),
  updated_at: DS.attr()
});
