class Link < ActiveRecord::Base
  belongs_to :next_exercise, :class_name => "Exercise"
  belongs_to :prev_exercise, :class_name => "Exercise"

end
