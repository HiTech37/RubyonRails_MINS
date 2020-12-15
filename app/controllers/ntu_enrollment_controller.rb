class NtuEnrollmentController < EnrollmentController

private

  def enrollment_class 
    NtuEnrollment
  end

  def university
    'ntu'
  end

end
