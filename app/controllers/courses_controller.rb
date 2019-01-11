class CoursesController < ApplicationController
  def index
    @course = Course.new
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    Course.create(course_params)
    redirect_to '/courses'
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    @course.save
    redirect_to '/courses'
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to '/courses'
  end

  private
    def course_params
      params.require(:course).permit(:name, :hours, :description)
    end

end
