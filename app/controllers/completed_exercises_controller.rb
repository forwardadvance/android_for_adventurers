class CompletedExercisesController < ApplicationController
  before_action :set_completed_exercise, only: [:show, :edit, :update, :destroy]

  # GET /completed_exercises
  # GET /completed_exercises.json
  def index
    @completed_exercises = CompletedExercise.all
  end

  # GET /completed_exercises/1
  # GET /completed_exercises/1.json
  def show
  end

  # GET /completed_exercises/new
  def new
    @completed_exercise = CompletedExercise.new
  end

  # GET /completed_exercises/1/edit
  def edit
  end

  # POST /completed_exercises
  # POST /completed_exercises.json
  def create
    @completed_exercise = CompletedExercise.new(completed_exercise_params)

    respond_to do |format|
      if @completed_exercise.save
        format.html { redirect_to @completed_exercise, notice: 'Completed exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @completed_exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @completed_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /completed_exercises/1
  # PATCH/PUT /completed_exercises/1.json
  def update
    respond_to do |format|
      if @completed_exercise.update(completed_exercise_params)
        format.html { redirect_to @completed_exercise, notice: 'Completed exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @completed_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_exercises/1
  # DELETE /completed_exercises/1.json
  def destroy
    @completed_exercise.destroy
    respond_to do |format|
      format.html { redirect_to completed_exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed_exercise
      @completed_exercise = CompletedExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def completed_exercise_params
      params.require(:completed_exercise).permit(:exercise_id, :person_id)
    end
end
