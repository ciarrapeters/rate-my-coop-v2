import DS from 'ember-data';

export default DS.Model.extend({
  positionTitle: DS.attr(),
  periodOfWork: DS.attr(),
  location: DS.attr(),
  review: DS.attr(),
  starRating: DS.attr(),

  students: DS.belongsTo('student'),
  company: DS.belongsTo('company')
});
