import Controller from '@ember/controller';

export default Controller.extend({
  selectedItem: '',
  coopPositions: null,

  actions: {
    findCoops() {
      this.store.query('coop-position', {
        company_id: this.selectedItem.id
      }).then((result) => {
        this.set('coopPositions', result);
      })
    }
  }
});
