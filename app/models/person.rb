class Person < ActiveRecord::Base

  before_create :set_current_exercise

  # attr_accessible :name, :pirate_name, :email, :password_confirmation

  has_secure_password
  has_many :logins
  belongs_to :current_exercise, :class_name => "Exercise"
  has_many :answers

  private

    def set_current_exercise
      self.current_exercise = Exercise.first
    end

end
