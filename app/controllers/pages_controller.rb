class PagesController < ApplicationController
  def top
    @events = Event.all.order(created_at: "DESC")
  end
end
