class CoursesController < ApplicationController
  def index
    @item = Course.new
    @items = Course.all
  end

  def show
  end

  def create
    Course.create(course_params)
    redirect_to '/courses'
  end

  def edit
    @item = Course.find(params[:id])
  end

  def update
    @item = Course.find(params[:id])
    @item.update(course_params)
    @item.save
    redirect_to '/courses'
  end

  def destroy
    @item = Course.find(params[:id])
    @item.destroy
    redirect_to '/courses'
  end

  private
    def course_params
      params.require(:course).permit(:name, :hours, :description)
    end

end
