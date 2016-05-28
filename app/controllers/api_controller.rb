class ApiController < ApplicationController
  def properties
    @properties = Property.all

    respond_to do |format|
      format.json{ render :partial => 'properties.json' }
    end
  end
end