class Login < ActiveRecord::Base

  SESSION_LENGTH = 1.month

  belongs_to :person

  after_create :generate_keys, :set_expiry

  private

  def generate_keys
    self.login_key = String.random_alphanumeric( rand(128) + 128 )
  end

  def set_expiry
    self.expires = Time.now + SESSION_LENGTH
    self.save
  end

  def add_key_to_session
    session[:login_key] = self.login_key
  end

  def remove_key_from_session
    session[:login_key] = nil
  end

end