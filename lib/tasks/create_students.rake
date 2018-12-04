desc "Create all the students then use rails console to update their mycoops later"
task create_students: :environment do
  Student.create(name: 'Ashna Shah', contact: 'shah.ash@husky.neu.edu')
  Student.create(name: 'Ciarra Peters', contact: 'peters.ci@husky.neu.edu')
 end
