class Exercise < ActiveRecord::Base

  belongs_to :section
  has_many :questions
  has_many :people_on_this_exercise, :class_name => "Person", :foreign_key => "current_exercise_id"

  has_many :next_links, :foreign_key => 'prev_exercise_id',
                       :class_name => 'Link'
  has_many :next_exercises, :through => :next_links

  has_many :prev_links, :foreign_key => 'next_exercise_id',
                       :class_name => 'Link'
  has_many :prev_exercises, :through => :prev_links


  attr_accessor :question_order
  after_initialize :init_question_order

  def Exercise.compass
    {
      up:         [0,-1],
      up_right:   [1,-1],
      right:      [1,0],
      down_right: [1,1],
      down:       [0,1],
      down_left:  [-1,1],
      left:       [-1,0],
      up_left:    [-1,-1]
    }
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

  Exercise.compass.each do |direction, vector|
    define_method direction do |slug, title = "", args = {}|
      # Find or create the section
      target_section = (args[:section] && args[:course]) ? args[:course].section(args[:section]) : self.section
      # setup the exercise
      exercise = target_section.exercise(slug)
      exercise.x_pos = self.x_pos + vector[0]
      exercise.y_pos = self.y_pos + vector[1]
      exercise.save
      # Link the sections
      link = Link.where(prev_exercise_id: self.id, next_exercise_id: exercise.id).first_or_create
      link.title = title ? title : exercise.title
      link.save
      # Move the section into place
      puts "*****" + target_section.slug + ", " + self.section.slug
      if target_section != self.section
        target_section.x_pos = self.x_pos + (vector[0] * 2)
        target_section.y_pos = self.y_pos + (vector[1] * 2)
        target_section.save
      end
    end
  end

  def complete(person)
    false
  end

  private

    def init_question_order
      self.question_order = 0
    end

end
