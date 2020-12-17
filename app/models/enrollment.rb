class Enrollment < ApplicationRecord

    validates :score, inclusion: { in: %w(A+ A A- B+ B B- C+ C C- D E X),
    message: "Score is not valid" }
    
    belongs_to :course 
    belongs_to :user 


    # Start:  Add new enrollment 
    def self.renew(params)

        course =  Course.find_or_create_by!(
             number: params[:course_number], 
             title: params[:title], 
             credit:  params[:credit].to_i, 
             instructor: params[:instructor],
             total_enrollment: params[:total_enrollment].to_i, 
             user_id: params[:user_id], 
             university_id: params[:university_id]
        )
       
        enrollment = self.find_or_create_by(course_id: course.id, user_id: params[:user_id])
        enrollment.update!(score: params[:score], rank: params[:rank].to_i)
        enrollment
    end
    # End:  Add new enrollment 

end
