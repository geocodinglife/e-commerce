class WelcomeController < ApplicationController
  layout 'landing', only: %i[index]
  def index
    @daily_workout = DailyWorkout.last
  end
end
