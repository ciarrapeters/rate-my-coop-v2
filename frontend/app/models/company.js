import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),

  // students: DS.hasMany('student'),
  coopPositions: DS.hasMany('coop-positions')
});
