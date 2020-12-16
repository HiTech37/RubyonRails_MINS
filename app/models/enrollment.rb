class Enrollment < ApplicationRecord

    validates :score, inclusion: { in: %w(A+ A A- B+ B B- C+ C C- D E X),
    message: "Score is not valid" }
    
    belongs_to :course 
    belongs_to :user 

end
