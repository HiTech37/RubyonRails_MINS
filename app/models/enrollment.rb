class Enrollment < ApplicationRecord
  self.abstract_class = true
  validates :score, presence: true 


  COURSE_CLASS = nil
  STUDENT_CLASS = nil

  def description
    {
      course_number: course.number,
      student_number: student.number,
      score: score,
      credit: course.credit,
      title: course.title,
      rank: rank,
      total_enrollment: course.total_enrollment,
      instructor: course.instructor
    }
  end


  def self.renew(params)
    student = self::STUDENT_CLASS.find_or_create_by!(number: params[:student_number])
    course = self::COURSE_CLASS.find_or_create_by!(number: params[:course_number])
    course.update!(title: params[:title],
                   credit: params[:credit].to_i, 
                   instructor: params[:instructor],
                   total_enrollment: params[:total_enrollment].to_i)
    enrollment = self.find_or_create_by(course_id: course.id, student_id: student.id)
    enrollment.update!(score: params[:score], rank: params[:rank].to_i)
    enrollment
  end

end

