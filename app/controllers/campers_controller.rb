class CampersController < ApplicationController
 wrap_parameters format: []

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    rescue ActiveRecord::RecordInvalid => invalid 
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def index 
        campers = Camper.all
        render json: campers
    end

    def show     
        camper = Camper.find(params[:id]) 
        if camper
            render json: camper
        else
            render json: {errors: "Camper not found" }
        end
    end



    def camper_params
        params.permit(:name, :age)
    end

end
