desc "Create all the coops"
task create_coops: :environment do
 CoopPosition.create(position_title: 'Software Engineer Co-op', location: 'Boston, MA', review: 'Amazeballs', star_rating: 5, student_id: Student.where(name:'Ciarra Peters').first.id, company_id: Company.where(name:'Koch Industries').first.id)
 CoopPosition.create(position_title: 'Software Engineer Co-op', location: 'Boston, MA', review: 'Great!', star_rating: 5, student_id: Student.where(name:'Ashna Shah').first.id, company_id: Company.where(name:'Blueport Commerce').first.id)
 end
