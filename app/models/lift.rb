class Lift < ApplicationRecord
  belongs_to :daily_workout

  validates :name, :sets, :reps, presence: true
end
