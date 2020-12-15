class NthuStudent < Student
  validates :number, format: { with: /\A\d{9}\z/, message: "Not a valid student ID" }
  has_many :nthu_enrollments
  has_many :nthu_courses, through: :nthu_enrollments

  def university
    'NTHU'
  end
end
