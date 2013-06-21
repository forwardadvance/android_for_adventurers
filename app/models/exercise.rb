class Exercise < ActiveRecord::Base

  belongs_to :section
  has_many :questions
  has_many :people_on_this_exercise, :class_name => "Person", :foreign_key => "current_exercise_id"

  attr_accessor :question_order
  after_initialize :init_question_order

  def Exercise.compass
    [:up, :up_right, :right, :down_right, :down, :down_left, :left, :up_left]
  end

  Exercise.compass.each do |direction|
    belongs_to :"#{direction}_exercise", :class_name => "Exercise", :foreign_key => "#{direction}_id"
  end

  def first_exercise
    self.is_first_exercise = true
    self.save
  end

  def first_exercise?
    self.is_first_exercise
  end

  def last_exercise
    self.is_last_exercise = true
    self.save
  end

  def last_exercise?
    self.is_last_exercise
  end


  def new_question(slug)
    question = Question.where(:slug => slug).first_or_create
    question.exercise = self
    question.save
    question.order = self.question_order += 1
  end
  alias_method :question, :new_question

  Exercise.compass.each do |direction|
    define_method direction do |slug, description = "", args = {}|
      target_section = (args[:section] && args[:course]) ? args[:course].section(args[:section]) : self.section
      exercise = target_section.exercise(slug)
      self.send(:"#{direction}_id=", exercise.id)
      self.send(:"#{direction}_description=", description)
      self.save
    end
  end

  private
    def init_question_order
      self.question_order = 0
    end

end
