class ApartmentsController < ApplicationController
    
    def create
        new_apartment = Apartment.create!(apartment_params)
        render json: new_apartment, status: :created
    end

    def index
        apartments = Apartment.all
        render json: apartments
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        render json: {message: "deleted"}
    end

    def update
        
        apartment = Apartment.find(params[:id])
        apartment.update!(apartment_params)
        render json: {message: "updated"},status: :ok
    end

    def show
        apartment = Apartment.find(params[:id])
        render json: apartment, status: :ok
    end


    private 
    def apartment_params
        params.permit(:number)
    end





end
