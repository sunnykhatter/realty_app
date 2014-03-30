class PropertiesController < ApplicationController
	def index
		@properties = Property.all
	end

	def show
		@property = Property.find(params[:id])
	end

	def new
		@property = Property.new
	end

	def create
		@property = Property.create(property_params)
		if @property.save
			redirect_to property_path(@property)
		else
			render "new"
		end
	end

	def update
		property = Property.find(params[:id])
		property.update_attributes!(property_params)
	end

	def destroy
	    Property.find(params[:id]).destroy
	    flash[:success] = "Property Deleted!"
	    redirect_to properties_url
	end

private
	def property_params
	params.require(:property).permit(:address, :postal_code, :province_state, :country, :bathrooms, :bedrooms, :price, 
		:furnished, :utilities?, :description, :move_in_date, :minimum_lease_duration, :city, :square_feet)
	end

end
