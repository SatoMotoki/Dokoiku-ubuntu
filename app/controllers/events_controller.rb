class EventsController < ApplicationController

  def manage
    @events = Event.where(user_id: current_user)
  end

  def show
    @event = Event.find_by(id: params[:id])
    @comment = Comment.new
  end

  def index
    @events = Event.all.order(:start_date, :start_time)
    # wd = ["日", "月", "火", "水", "木", "金", "土"]

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

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    redirect_to events_manage_path
  end

  private
  def event_params
    params.require(:event).permit(
      :title, :start_date, :start_time, :end_date, :end_time, :venue, :address, :image, :description, :admission_fee
    )
  end

end
