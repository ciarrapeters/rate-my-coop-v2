# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
company_list = [ 'Blueport Commerce', 'Salsify', 'FluidScreen', 'Koch Industries', 'UBS', 'Cambodian Volunteers for Community Development Organization' ]

company_list.each do |name|
  Company.create(name: name)
end

student_list = [
  [ 'Ashna Shah', 'shah.ash@husky.neu.edu' ],
  [ 'Ciarra Peters', 'peters.ci@husky.neu.edu'],
  [ 'Kenneth See Dehui', 'see.k@husky.neu.edu']
]

student_list.each do |name, contact|
  Student.create(name: name, contact: contact)
end

coop_list = [
  ['Software Developer Analyst Co-op', 'Fall 2017', 'Wichita, KS', 'Amazeballs', 5, 'Ciarra Peters', 'Koch Industries'],
  ['Software Developer Co-op', 'Fall 2017', 'Boston, MA', 'Great!', 5, 'Ashna Shah', 'Blueport Commerce'],
  ['Software Engineer Co-op', 'Fall 2018', 'Boston, MA', 'Super amazing!', 5, 'Ciarra Peters', 'Salsify'],
  ['Software Developer Co-op', 'Fall 2018', 'Boston, MA', 'Could be better', 3, 'Ashna Shah', 'FluidScreen'],
  ['Microfinance Analyst', 'Fall 2017', 'Phnom Penh, Cambodia', 'Amazing!', nil, 'Kenneth See Dehui', 'Cambodian Volunteers for Community Development Organization'],
  ['Business Analyst', 'Fall 2018', 'Weehawken, NJ', 'Challenging', 4, 'Kenneth See Dehui', 'UBS']
]

coop_list.each do |position_title, period_of_work, location, review, star_rating, name, company_name|
  CoopPosition.create(position_title: position_title, period_of_work: period_of_work, location: location, review: review, star_rating: star_rating, student_id: Student.where(name: name).first.id, company_id: Company.where(name: company_name).first.id)
end
