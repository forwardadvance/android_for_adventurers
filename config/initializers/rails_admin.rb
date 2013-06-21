# RailsAdmin config file. Generated on June 13, 2013 08:05
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|
  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Space Javascript', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_person } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'Person'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'Person'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Answer', 'CompletedExercise', 'Course', 'Exercise', 'Feedback', 'Login', 'PageView', 'Person', 'Question', 'Section']

  # Include specific models (exclude the others):
  # config.included_models = ['Answer', 'CompletedExercise', 'Course', 'Exercise', 'Feedback', 'Login', 'PageView', 'Person', 'Question', 'Section']

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:



  ###  Answer  ###

  # config.model 'Answer' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your answer.rb model definition

  #   # Found associations:

  #     configure :person, :belongs_to_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :person_id, :integer         # Hidden
  #     configure :completed_exercise_id, :integer
  #     configure :text, :text
  #     configure :html, :text
  #     configure :javascript, :text
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  CompletedExercise  ###

  # config.model 'CompletedExercise' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your completed_exercise.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer
  #     configure :person_id, :integer
  #     configure :exercise_slug, :integer
  #     configure :section_slug, :integer
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Course  ###

  # config.model 'Course' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your course.rb model definition

  #   # Found associations:

  #     configure :sections, :has_many_association
  #     configure :exercises, :has_many_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :slug, :string
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Exercise  ###

  # config.model 'Exercise' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your exercise.rb model definition

  #   # Found associations:

  #     configure :section, :belongs_to_association
  #     configure :up_exercise, :belongs_to_association
  #     configure :up_right_exercise, :belongs_to_association
  #     configure :right_exercise, :belongs_to_association
  #     configure :down_right_exercise, :belongs_to_association
  #     configure :down_exercise, :belongs_to_association
  #     configure :down_left_exercise, :belongs_to_association
  #     configure :left_exercise, :belongs_to_association
  #     configure :up_left_exercise, :belongs_to_association
  #     configure :questions, :has_many_association
  #     configure :people_on_this_exercise, :has_many_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :title, :string
  #     configure :slug, :string
  #     configure :section_id, :string         # Hidden
  #     configure :is_first_exercise, :boolean
  #     configure :is_last_exercise, :boolean
  #     configure :up_id, :string         # Hidden
  #     configure :up_description, :string
  #     configure :up_right_id, :string         # Hidden
  #     configure :up_right_description, :string
  #     configure :right_id, :string         # Hidden
  #     configure :right_description, :string
  #     configure :down_right_id, :string         # Hidden
  #     configure :down_right_description, :string
  #     configure :down_id, :string         # Hidden
  #     configure :down_description, :string
  #     configure :down_left_id, :string         # Hidden
  #     configure :down_left_description, :string
  #     configure :left_id, :string         # Hidden
  #     configure :left_description, :string
  #     configure :up_left_id, :string         # Hidden
  #     configure :up_left_description, :string
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Feedback  ###

  # config.model 'Feedback' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your feedback.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer
  #     configure :person_id, :integer
  #     configure :exercise_slug, :string
  #     configure :section_slug, :string
  #     configure :text, :text
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Login  ###

  # config.model 'Login' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your login.rb model definition

  #   # Found associations:

  #     configure :person, :belongs_to_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :person_id, :integer         # Hidden
  #     configure :login_key, :string
  #     configure :expires, :string
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PageView  ###

  # config.model 'PageView' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your page_view.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer
  #     configure :person_id, :integer
  #     configure :url, :integer
  #     configure :referrer, :string
  #     configure :ip, :string
  #     configure :params, :text
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Person  ###

  # config.model 'Person' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your person.rb model definition

  #   # Found associations:

  #     configure :current_exercise, :belongs_to_association
  #     configure :logins, :has_many_association
  #     configure :answers, :has_many_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :name, :string
  #     configure :pirate_name, :string
  #     configure :email, :string
  #     configure :level, :string
  #     configure :current_exercise_id, :string         # Hidden
  #     configure :admin, :boolean
  #     configure :enabled, :string
  #     configure :password_digest, :string
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Question  ###

  # config.model 'Question' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your question.rb model definition

  #   # Found associations:

  #     configure :exercise, :belongs_to_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :slug, :string
  #     configure :exercise_id, :integer         # Hidden
  #     configure :order, :integer
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Section  ###

  # config.model 'Section' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your section.rb model definition

  #   # Found associations:

  #     configure :course, :belongs_to_association
  #     configure :exercises, :has_many_association

  #   # Found columns:

  #     configure :id, :integer
  #     configure :title, :string
  #     configure :slug, :string
  #     configure :course_id, :integer         # Hidden
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end

end


# RailsAdmin.authenticate_with{
#   unless current_user
#     session[:return_to] = request.url
#     redirect_to login_url, :alert => "You must first log in or sign up before accessing this page."
#   end
# }

# RailsAdmin.authorize_with{
#   redirect_to root_path, :alert => "You are not authorized to access that page" unless current_user.admin?
# }
