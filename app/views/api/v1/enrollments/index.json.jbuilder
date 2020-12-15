json.enrolments   @enrollments  do |enrolment|
    json.partial! "enrollment.json.jbuilder", enrolment: enrolment
end