import Route from '@ember/routing/route';

export default Route.extend({
  queryParams: {
    positionTitle: {
      refreshModel: true
    }
  },
  //companyId: '',
  positionTitle: '',
  studentsAtCompany: null,

  async model(params) {
    console.log('models position Title: ' + params);
    return this.store.query('student', params);
  }
});
