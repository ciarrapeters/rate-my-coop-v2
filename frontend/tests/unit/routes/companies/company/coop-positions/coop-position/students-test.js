import { module, test } from 'qunit';
import { setupTest } from 'ember-qunit';

module('Unit | Route | companies/company/coop-positions/coop-position/students', function(hooks) {
  setupTest(hooks);

  test('it exists', function(assert) {
    let route = this.owner.lookup('route:companies/company/coop-positions/coop-position/students');
    assert.ok(route);
  });
});
