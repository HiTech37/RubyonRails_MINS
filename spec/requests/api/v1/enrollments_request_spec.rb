require 'rails_helper'

RSpec.describe "Api::V1::Enrollments", type: :request do

    path  "/api/v1/enrollments" do 
        get "All Enrollments" do
            tags "Enrollments"
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

    # Start: Create Enrollments 

    path  "/api/v1/enrollments" do 
        post "Create Enrollment" do
            tags "Enrollments"
            consumes "application/json"
          
            parameter name: :string,  in: :query, schema: {
                type: :object,
                properties: {
                    token: {type: :string}
                },  
                required: ["token"],
            }  


            parameter name: :enrollment, in: :body, schema: {
                type: :object,
                properties:{ 
                        enrollment:{
                                    type: :object,
                                    properties: {
                                        course_number: { type: :string },
                                        score: { type: :string },
                                        credit: { type: :integer },
                                        title: { type: :string }
                                    },
                                    required: ["course_number", "score", 
                                        "credit", "title"],
                            }
                           
                    }   
            }
    

            response "200", "Create Enrollment" do
                let(:enrollment) { }
                run_test!
            end
            response "422", "invalid request" do
                let(:enrollment) { }
                run_test!
            end
            end
    end

    # End: Create Enrollments 


    # Start: Update Enrollements 

    path  "/api/v1/enrollments/{id}" do 
        put "Update Enrollments" do
            tags "Enrollments"
            consumes "application/json"
            parameter name: :id, in: :path, type: :integer, required: true, description: 'Enrollement ID'

          
            parameter name: :string,  in: :query, schema: {
                type: :object,
                properties: {
                    token: {type: :string}
                },  
                required: ["token"],
            }  

            parameter name: :enrollment, in: :body, schema: {
                type: :object,
                properties:{ 
                        enrollment:{
                                    type: :object,
                                    properties: {
                                        score: { type: :string },
                                        credit: { type: :integer },
                                        from_token: { type: :string }
                                    },
                            }
                    }   
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

    # End : Update Enrollements
    
    
    # Start: Show Enrollement 

    path  "/api/v1/enrollments/{id}" do 
        get "Show Enrollement" do
            tags "Enrollments"
            consumes "application/json"
                        parameter name: :id, in: :path, type: :integer, required: true, description: 'Enrollement ID'

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

    # End : Show Enrollment 

end
