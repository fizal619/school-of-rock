class CohortsController < ApplicationController
  def index
    @item = Cohort.new
    @items  = Cohort.all
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
