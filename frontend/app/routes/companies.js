import Route from '@ember/routing/route';

export default Route.extend({
  selectedItem: '',

  model() {
    return this.store.findAll('company');
  }

});
