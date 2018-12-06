import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  contact: DS.attr(),

  coopPositions: DS.hasMany('coop-position')
});
