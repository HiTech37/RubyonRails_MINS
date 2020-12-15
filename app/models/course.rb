class Course < ApplicationRecord
  self.abstract_class = true
  validates :number, presence: true, uniqueness: true

  def description
    init = Hash[score_categories.collect { |s| [s, 0] }]
    {
      score: enrollments.inject(init) { |h, e| h[e.score] += 1; h },
      title: title,
      number: number,
      credit: credit,
      total_enrollment: total_enrollment,
      instructor: instructor
    }
  end

end
