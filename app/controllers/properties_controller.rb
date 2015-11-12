class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update]

  # User must be authenticated before every controller action, except for show
  before_action :authenticate_user!, except: [:show]


  def index
    @properties = current_user.properties
  end

  def show
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)

    if @property.save
      redirect_to @property, notice: "Saved..."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to edit_property_path(@property), notice: "Updated..."
    else
      render :edit
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def room_params
      params.require(:property).permit(
          :property_type,
          :address, :suburb, :postcode, :state,
          :description,
          :bedrooms, :bathrooms, :car_spaces,
          :active
      )
    end

end
