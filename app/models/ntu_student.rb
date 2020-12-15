class NtuStudent < Student
  validates :number, format: { with: /\A[ABCDEFHJKNPQRSTYZ]\d{2}[1-9ABE][0-4]\d[0-3]\d{2}\z/, 
                      message: "Not a valid student ID" }
  has_many :ntu_enrollments
  has_many :ntu_courses, through: :ntu_enrollments
  def university
    'NTU'
  end
end
