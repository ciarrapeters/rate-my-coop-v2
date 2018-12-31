import Route from '@ember/routing/route';
import RSVP from 'rsvp';

export default Route.extend({
  model() {
    let company = this.modelFor('companies/company');
    return RSVP.hash({
      company: this.modelFor('companies/company'),
      coopPositions: company.get('coopPositions')
    });
  }
});
