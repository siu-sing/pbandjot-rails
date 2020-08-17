class Record < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  before_save :update_prescribed

  def update_prescribed
    if workout.workout_type == "benchmark"
      case user.gender
      when "Male"
        puts "@@@@@@@@@MALE"
        self.prescribed = self.pb_weight >= self.workout.prescribed_male.to_i
      when "Female"
        self.prescribed = self.pb_weight >= self.prescribed_female.to_i
      end
    end
  end
end
