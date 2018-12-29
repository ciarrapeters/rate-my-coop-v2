import Route from '@ember/routing/route';

export default Route.extend({
  model() {
    let company = this.modelFor('companies/company');
    return company.get('coopPositions');
  }
});
