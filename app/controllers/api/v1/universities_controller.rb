class Api::V1::UniversitiesController < ApplicationController

    # Get All Universities 

    def index 
        @univeristies =  University.all
    end 
end
