class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update]

  # User must be authenticated before every controller action, except for show
  before_action :authenticate_user!, except: [:show]


  def index
    @properties = current_user.properties
  end

  def show
    @photos = @property.photos

    @screening_criteria = @property.screening_criteria
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)

    if @property.save
      @property.create_screening_criteria(user_id: current_user.id)

      if params[:images]
        params[:images].each do |image|
          @property.photos.create(image: image)
        end
      end

      @photos = @property.photos
      redirect_to property_path(@property), notice: "Saved..."
    else
      render :new
    end
  end

  def edit
    if current_user.id == @property.user.id
      @photos = @property.photos
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @property.update(property_params)

      if params[:images]
        params[:images].each do |image|
          @property.photos.create(image: image)
        end
      end

      redirect_to property_path(@property), notice: "Updated..."
    else
      render :edit
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(
          :property_type,
          :address, :suburb, :postcode, :state,
          :description,
          :bedrooms, :bathrooms, :car_spaces,
          :active, :weekly_rent
      )
    end

end
