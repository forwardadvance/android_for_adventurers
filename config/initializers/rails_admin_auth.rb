require "rails_admin/application_controller"

module RailsAdmin
  class ApplicationController < ::ApplicationController
    before_filter :admin_required
  end
end