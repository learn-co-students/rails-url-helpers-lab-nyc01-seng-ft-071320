class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
    # had no idea there was a helper method called redirect_to -- very cool
    #redirect_to obviously takes a path as its argument
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end