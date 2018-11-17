desc "Create all the coops"
task create_coops: :environment do
  Mycoop.create(company_name: 'Blueport Commerce', geo_location: 'Boston, MA', review: 'Great!', time_period: '2017')
  Mycoop.create(company_name: 'Koch', geo_location: 'Wichita, KS', review: 'Awesome!', time_period: '2017')
  Mycoop.create(company_name: 'FluidScreen', geo_location: 'Boston, MA', review: 'Meh!', time_period: '2018')
  Mycoop.create(company_name: 'Salsify', geo_location: 'Boston, MA', review: 'Amazeballs!', time_period: '2018')
 end
