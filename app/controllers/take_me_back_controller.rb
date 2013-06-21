class TakeMeBackController < ApplicationController

  def index
    if logged_in?
      if !current_person.current_exercise
        current_person.current_exercise = Exercise.first
        current_person.save
      end
      redirect_to exercise_path(current_person.current_exercise.section.slug, current_person.current_exercise.slug)
    else
      redirect_to splash_path
    end
  end

end
