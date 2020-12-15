class NthuEnrollmentController < EnrollmentController

private

  def enrollment_class
    NthuEnrollment
  end

  def university 
    'nthu'
  end

end
