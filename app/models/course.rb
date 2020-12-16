class Course < ApplicationRecord

    # validates :number

    belongs_to :user 
    belongs_to :university 

end
