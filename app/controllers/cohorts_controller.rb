class CohortsController < ApplicationController

  before_action :require_login

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

  def add_instructor
    @cohort = Cohort.find(params[:id])
    @cohort.instructors << Instructor.find(params[:instructor_id])
    redirect_to @cohort
  end

  def remove_instructor
    @cohort = Cohort.find(params[:id])
    @cohort.instructors.delete Instructor.find(params[:instructor_id])
    redirect_to @cohort
  end

  def add_student
    @cohort = Cohort.find(params[:id])
    @cohort.students << Student.find(params[:student_id])
    redirect_to @cohort
  end

  def remove_student
    @cohort = Cohort.find(params[:id])
    @cohort.students.delete Student.find(params[:student_id])
    redirect_to @cohort
  end

  private
    def cohort_params
      params.require(:cohort).permit(:name, :start, :end, :course_id)
    end

end
