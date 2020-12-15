class Student < ApplicationRecord
  self.abstract_class = true
  validates :number, presence: true, 
                     uniqueness: true 
end
