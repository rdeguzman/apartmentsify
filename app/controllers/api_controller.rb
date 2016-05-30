class ApiController < ApplicationController
  before_filter :allow_cors

  def properties
    @properties = Property.all

    respond_to do |format|
      format.json{ render :partial => 'properties.json' }
    end
  end

  private
    def allow_cors
      response.headers["Access-Control-Allow-Origin"] = "*"
    end
end