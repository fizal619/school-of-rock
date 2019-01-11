class CohortsController < ApplicationController
  def index
    @cohort = Cohort.new
  end

  def show
  end

  def edit
  end

  private
    def cohort_params
      params.require(:cohort).permit(:name, :start, :end, :course_id)
    end

end
