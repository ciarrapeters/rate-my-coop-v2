import Component from '@ember/component';

export default Component.extend({
  position: '',

  actions: {
    findStudents() {
      this.get('findStudents')(this.position);
    }
  }
});
