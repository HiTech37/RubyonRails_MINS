require 'rails_helper'

RSpec.describe "Api::V1::Universities", type: :request do


    path  "/api/v1/universities" do 
        get "University List" do
          tags "Universities"
          consumes "application/json"
          
          response "200", " " do
            let(:univeristy) {  }
            run_test!
          end
          
          response "422", "invalid request" do
            let(:univeristy) { }
            run_test!
          end
        end
    end



end
