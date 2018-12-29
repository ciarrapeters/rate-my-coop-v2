import Route from '@ember/routing/route';

export default Route.extend({
  model() {
    let position = this.modelFor('companies/company/coop-positions/coop-position');
    return position.get('student');
  }
});
