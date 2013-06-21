class ExercisesController < ApplicationController

  before_filter :login_required
  after_filter :set_current_exercise

  # GET /exercises
  # GET /exercises.json
  def index
    @exercises = Exercise.all
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @section = Section.where(:slug => params[:section_slug]).first
    @exercise = @section.exercises.where(:slug => params[:exercise_slug]).first
    @course = @section.course
    @sections = Section.all

    unless @exercise && @section
      not_found
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:title, :section_id)
    end

    def set_current_exercise
      current_person.current_exercise = @exercise
      current_person.save
    end

end
