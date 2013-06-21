class LoginsController < ApplicationController

  def new
    @nav = :login
    @email = flash[:email]
  end

  def create
    @nav = :login
    @email = params[:email] || flash[:email]
    if params[:email].nil? or params[:password].nil?
      # Protect against bots hitting us.
      render :text => "" and return
    end
    person = Person.where("email = lower(?)", params[:email].downcase).first
    if person && !person.enabled?
      flash[:error] = "Sorry, your account is not enabled. Please contact us to find out why."
    elsif person && person.authenticate( params[:password] )
      # Person is already logged in
      if person && logged_in?
        if person == @current_person
          # do nothing, person is already logged in
          redirect_to :take_me_back and return
        else
          # switch users
          @login.destroy
        end
      end
      @login = Login.create person: person
      login @login
      redirect_to session[:requested_url] || :take_me_back
      session[:requested_url] = nil
    else
      flash[:error] = "Sorry, your login details are incorrect. Please check that you have entered the correct email address and password."
      render :new, :status => :forbidden
    end
  end


  def destroy
    if logged_in?
      @login.destroy
      @login = nil
      @current_person = nil
      logout
    end
    redirect_to :splash
  end

end
