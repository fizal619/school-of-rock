class CohortsController < ApplicationController
  def index
    @cohort = Cohort.new
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def create
    Cohort.create(cohort_params)
    redirect_to '/cohorts'
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohort_params)
    @cohort.save
    redirect_to '/cohorts'
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to '/cohorts'
  end

  private
    def cohort_params
      params.require(:cohort).permit(:name, :start, :end, :course_id)
    end

end
