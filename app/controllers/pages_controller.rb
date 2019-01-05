class PagesController < ApplicationController
  def top
    @events = Event.all
  end
end
