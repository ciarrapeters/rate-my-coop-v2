import Controller from '@ember/controller';

export default Controller.extend({
  selectedItem: '',
  coopPositions: null,
  position: null,

  actions: {
    findCoops() {
      this.store.query('coop-position', {
        company_id: this.selectedItem.id
      }).then((result) => {
        this.set('coopPositions', result);
      })
    },

    findStudents: function(position) {
      var self = this;
      this.position = position;
      console.log('found position: ' + position);
      this.transitionToRoute('students').then(function(newRoute) {
        console.log('selfs position' + self.position.positionTitle);
        newRoute.currentModel.set('companyId', self.position.companyId);
        newRoute.currentModel.set('positionTitle', self.position.positionTitle);
      });
    }
  }
});
