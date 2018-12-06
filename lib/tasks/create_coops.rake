desc "Create all the coops"
task create_coops: :environment do
  CoopPosition.create(position_title: 'Software Developer Co-op', period_of_work: "Fall 2017", location: 'Boston, MA', review: 'Excellent!', star_rating: 5, student_id: 21, company_id: 31)
end
