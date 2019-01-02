class EventsController < ApplicationController
  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)

    if @event.save
      redirect_to root_path, success:'イベント作成に成功しました'
    else
      flash.now[:danger] = 'イベント作成に失敗しました'
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(
      :title, :start_date, :start_time, :end_date, :end_time, :venue, :address, :image, :description, :admission_fee
    )
  end

end
