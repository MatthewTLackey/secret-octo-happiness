class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :reps, :description, :parent_id)
  end

end
