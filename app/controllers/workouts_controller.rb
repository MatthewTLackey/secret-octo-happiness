class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(callout_params)
    @workout.user_id = current_user.id
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def workout_params
    params.require(:workout).permit(:name, :duration, :user_id)
  end

end
