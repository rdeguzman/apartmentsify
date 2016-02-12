class LandlordController < ApplicationController
  def become

  end

  def register
    user = User.find(params[:id])
    user.role = :landlord
    user.save

    redirect_to landlord_properties_path(id: user.id)
  end

end