class Course < ActiveRecord::Base

  has_many :sections

  class << self
    def setup(slug, &proc)
      course = Course.where(:slug => slug).first_or_create
      paths = Dir.new("#{Rails.root}/app/views/content").to_a.delete_if {|path| !path.downcase.include? course.slug.to_s}
      raise "course path for :#{slug} not found or ambiguous. Paths: #{paths.to_s}" unless paths.length == 1
      course.path = paths.first
      course.save
      proc.call(course);
    end

    def load_content
      Course.setup :android do |course|
        course.title = "Welcome to Android!"
        course.save
        course.section :welcome do |s|
          s.title = "Let's get started!"
          s.save
          s.exercise :intro do |e|
            e.title = "Welcome to the course brave adventurer!"
            e.first_exercise
            e.down :create, "First lets make and deploy an app!", :section => :create_test_deploy, :course => course
          end
        end
        course.section :create_test_deploy do |s|
          s.title = "Create, Test and Deploy"
          s.save
          s.exercise :create do |e|
            e.title = "Create a Project!"
            e.first_exercise
            e.down :test, "Now lets test in a simulator."
          end
          s.exercise :test do |e|
            e.title = "Test in a Simulator!"
            e.down :deploy, "Enough testing, let's deploy it to you phone!"
            e.save
          end
          s.exercise :deploy do |e|
            e.title = "Deploy to your Phone!"
            e.last_exercise
          end
        end
      end
      Course.setup :sensors do |course|
        course.title = "Sensors and More!"
        course.save
      end
    end
  end

  def new_section(slug, &proc)
    section = Section.where(:slug => slug).first_or_create
    section.course = self
    paths = Dir.new("#{Rails.root}/app/views/content/#{section.course.path}").to_a.delete_if {|path| !path.downcase.include? section.slug.to_s}
    raise "path #{slug} not found or ambiguous. #{paths.to_s}" unless paths.length == 1
    section.path = paths.first
    section.save
    if block_given?
      proc.call(section)
    end
    section
  end
  alias_method :section, :new_section

end
