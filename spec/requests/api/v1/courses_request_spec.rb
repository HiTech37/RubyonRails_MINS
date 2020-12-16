require 'rails_helper'

RSpec.describe "Api::V1::Courses", type: :request do

    path  "/api/v1/courses" do 
        get "Student Enrollments" do
            tags "Courses"
            consumes "application/json"
          
            parameter name: :string,  in: :query, schema: {
              type: :object,
              properties: {
                token: {type: :string}
              },  
              required: ["token"],
          }  

            response "200", "Enrollment" do
                let(:categories) { }
                run_test!
            end
            response "422", "invalid request" do
                let(:categories) { }
                run_test!
            end
            end
    end
end
