require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do

    path  "/api/v1/sessions" do 
        post "Login" do
          tags "Student Authentication"
          consumes "application/json"
          
          parameter name: :user, in: :body, schema: {

            type: :object,
            properties: { 
                    email: { type: :string },
                    password: { type: :string },
            },
            required: ["email", "password"],
          }

          response "200", " " do
            let(:user) { { email: ""} }
            run_test!
          end
          
          response "422", "invalid request" do
            let(:categories) { }
            run_test!
          end
        end
    end


    path  "/api/v1/users" do 
        post "Register" do
            tags "Student Authentication"
            consumes "application/json"

            parameter name: :user, in: :body, schema: {
                type: :object,
                properties:{ 
                            user:{
                                    type: :object,
                                    properties: {
                                        first_name: { type: :string },
                                        last_name: { type: :string },
                                        email: { type: :string },
                                        password: { type: :string },
                                        number: { type: :string },
                                        university_id: {type: :integer}
                                    },
                                    required: ["email", "password", "university_id"],
                            }
                           
                    }   
            }
    
            response "200", "Created a User" do
                let(:user) {}
                run_test!
            end

            response "422", "invalid request" do
                let(:user) { }
                run_test!
            end

        end
    end


end
