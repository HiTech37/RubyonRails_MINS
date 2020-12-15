json.courses @courses do |course|
      json.partial! "course.json.jbuilder", course: course
end