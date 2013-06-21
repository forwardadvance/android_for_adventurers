class Section < ActiveRecord::Base

  belongs_to :course
  has_many :exercises

  def first_exercise
    self.exercises.where(:is_first_exercise => true).first
  end

  def new_exercise(slug, &proc)
    exercise = Exercise.where(:slug => slug).first_or_create
    exercise.section = self
    paths = Dir.new("#{Rails.root}/app/views/content/#{self.course.path}/#{self.path}").to_a.delete_if {|path| !path.downcase.include? slug.to_s}
    raise "exercise path for #{slug} not found or ambiguous. #{paths.to_s}" unless paths.length == 1
    raise "exercise path #{paths.first} must start with an underscore."  unless paths.first.first == "_"
    exercise.partial = paths.first[1..-1]
    exercise.save
    if block_given?
      proc.call(exercise)
    end
    exercise
  end
  alias_method :exercise, :new_exercise

end