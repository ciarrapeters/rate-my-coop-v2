desc "Create all the students then use rails console to update their mycoops later"
task create_students: :environment do
  Student.create(name: 'Duk Hwan Kim', contact: 'kim.duk@husky.neu.edu')
 end
