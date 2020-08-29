class PropertiesController < ApplicationController
  before_action :current_property, only: [:show, :update, :destroy]

  def index
    @properties = Property.all
    render json: @properties
  end

  def show
    render json: @property
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      render json: {
        messages: "Sucessfully created", 
        is_success: true,
        data: { property: @property }
      }
    else
      render json: {
        messages: "Failed to add property", 
        is_success: false 
      }
    end
  end

  def update
    if @property.update(property_params)
      render json: {
        messages: "Sucessfully updated", 
        is_success: true,
        data: { property: @property }
      }
    else
      render json: {
        messages: "Failed to update property",
        is_success: false
      }
    end
  end

  def destroy
    @property.destroy
  end
  
  private 
  
  def property_params
    params.require(:property).permit(:address, :price, :bedrooms, :bathrooms, :area, :amenities_dpt, :amenities_bld, :close_by, :description, :type)
  end
  
  def current_property
    @property = Property.find(params[:id])
  end
end
