class ScreeningCriteriasController < ApplicationController
  def edit
    @criteria = ScreeningCriteria.find(params[:id])
  end

  def update
    @criteria = ScreeningCriteria.find(params[:id])

    if @criteria.update(screening_criteria_params)
      redirect_to property_path(@criteria.property_id), notice: "Updated Screening Criteria"
    else
      render 'edit'
    end
  end

  private
    def screening_criteria_params
      params.require(:screening_criteria).permit(:age_group,
                                                 :acceptable_monthly_income)
    end
end