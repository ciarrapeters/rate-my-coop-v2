import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('companies', function() {
    this.route('company', { path: '/:company_id' }, function() {
      this.route('coop-positions', function() {
        this.route('coop-position', { path: '/coop-positions/:coop_position_id' }, function() {
          this.route('students');
        });
      });
    });
  });
});

export default Router;
