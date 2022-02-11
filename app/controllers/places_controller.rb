class PlacesController < ApplicationController

  def index
    places = Place.where
    render json: places 
    end 
  
    def show
      id = params[:id].to_i
      place = Place.find_by(id: id)
      render json: place.as_json
    end  
  
    def create
       place = Place.new(
         name: params[:name],
         location: params[:location],
         touristQuantity: params[:touristQuantity],
         description: params[:description],
         imageUrl: params[:imageUrl]
       )
       if place.save
         render json: place
       else 
        render json: {errors: place.errors.full_messages}, status: :patial_content
       end 
    end 
  
    def update
       place = Place.find(params[:id])
       place.name = params[:name] || place.name
       place.location = params[:location] || place.location
       place.touristQuantity = params[:touristQuantity] || place.touristQuantity
       place.description = params[:description] || place.description
       place.imageUrl = params[:imageUrl] || place.imageUrl
       if place.save
         render json: place
       else 
        render json: {errors: place.errors.full_messages}, status: :unprocessable_entity
       end 
    end
  
    def destroy 
      place = Place.find(params[:id])
      place.delete
      render json: "Your location choice is deleted"
    end
  
  














end
