class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]


  def index
    if params[:address_key]
      @events = Event.where('address LIKE ?', "%#{params[:address_key]}%")
      @events = @events.order("day DESC")
    else
      @events = Event.all.order("day DESC")
    end
  end


  def show
  end


  def new
    @event = Event.new
  end


  def edit
  end


  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    if @event.user_id == current_user.id
      respond_to do |format|
        @event.update(event_params)
      end
    else
      redirect_to @event, notice: "編集に失敗しました。投稿者のみ編集できます。"
  end
end


  def destroy
    if @event.user_id == current_user.id
      @event.destroy
      msg = "イベントを削除しました。"
    else
      msg = "イベントの削除に失敗しました。投稿者のみ削除できます。"
    end
    respond_to do |format|
      format.html { redirect_to events_url, notice: msg }
      format.json { head :no_content }
      end
  end


  private

    def set_event
      @event = Event.find_by(id: params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :address, :content, :day, :image, :genre_id)
    end
end
