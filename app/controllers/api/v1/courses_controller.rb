class Api::V1::CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  # GET /courses
  def index
    @courses = Course.all

    render json: CourseSerializer.new(@courses).serialized_json
  end

  # GET /courses/1
  def show
    render json: CourseSerializer.new(@course).serialized_json
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: CourseSerializer.new(@course).serialized_json, status: :created
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: CourseSerializer.new(@course).serialized_json
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :code)
    end
end
