class MapController < ApplicationController

  def show
    @sections = Section.all
  end

end
