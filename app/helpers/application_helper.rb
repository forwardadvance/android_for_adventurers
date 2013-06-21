module ApplicationHelper
  def title
    title = []
    title << @exercise.title if @exercise
    title << @section.title if @section
    title << "Space Javascript"
    title.join(" - ")
  end

  def signed_in?
    @current_person
  end

  def admin_user?
    @current_person && @current_person.admin
  end

  def body_class
    bc = []
    bc << params[:controller].gsub('/', ' ')
    bc << params[:action]
    if @version
      bc << "version_#{@version}"
    end
    bc.join(' ')
  end
end
