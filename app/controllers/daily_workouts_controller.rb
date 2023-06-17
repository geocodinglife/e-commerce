class DailyWorkoutsController < ApplicationController
  def new
    @daily_workout = DailyWorkout.new
    @daily_workout.lifts.build
  end

  def create
    @daily_workout = DailyWorkout.create(daily_workout_params)
    return render :new unless @daily_workout.save

    redirect_to root_path, flash: { success: 'A new daily workout was created successfully' }
  end

  private

  def daily_workout_params
    params.require(:daily_workout).permit(:focus, lifts_attributes: %i[name sets reps])
  end
end
