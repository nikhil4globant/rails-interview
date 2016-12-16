class StudentsController < ApplicationController
  def index
    if params[:movie].present?
      @students = Student.where('LOWER(favoritemovie) = ?',  params[:movie].downcase)
    else
      @students = Student.all
    end
  end
end
