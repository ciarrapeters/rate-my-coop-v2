import Route from '@ember/routing/route';

export default Route.extend({
  model(params) {
    return this.store.findRecord('coop-position', params.coop_position_id);
  }
});
