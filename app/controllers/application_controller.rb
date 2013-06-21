class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :login_from_session#, :log_pageview

  def current_person
    @current_person
  end

  def admin_user?
    current_person && current_person.admin == true
  end

  def logged_in?
    current_person != nil && @login != nil
  end

  def login l
    session[:login_key] = l.login_key
    @login = l
    @current_person = l.person
  end

  def logout
    session[:login_key] = nil
    @login = nil
    @current_person = nil
  end

  def not_found(args = {})
    @reason = args[:message] || args[:reason]
    begin
      render :file => "error/404", :status => :not_found
    rescue
      debugger
      render :file => "error/404.html.haml", :status => :not_found
    end
  end


  private

    def login_from_session
      if session[:login_key]
        @login = Login.where(login_key: session[:login_key]).where("expires > ?", Time.now).first
        if @login
          @current_person = @login.person
        else
          @login = nil
          session[:login_key] = nil
        end
      end
    end

    def log_pageview
      PageView.create person_id: (current_person ? current_person.id : nil)
    end

    def login_required
      unless logged_in?
        session[:requested_url] = request.fullpath
        redirect_to :login
        return false
      end
    end

    def admin_required
      unless logged_in? && admin_user?
        session[:requested_url] = request.fullpath
        redirect_to :login
        return false
      end
    end
end
