class Admins::CoursesController < ApplicationController
    def new
     @course = Course.new(params[:id])
    end

    def index
     @courses = Course.all
    end

    def create
     @course = Course.new(course_params)
     @course.save
     redirect_to customers_courses_path
    end

    def show
     @course = Course.find(params[:id])
    end

    def edit
     @course = Course.find(params[:id])
    end

    def update
     @course = Course.find(params[:id])
     if @course.update(course_params)
        redirect_to admins_course_path(@course), notice: "You have updated genre successfully."
     else
        render "edit"
     end
    end

    def course_params
     params.require(:course).permit(:name, :non_tax_price, :introduction, :is_active, :genre_id, :image)
    end
end
