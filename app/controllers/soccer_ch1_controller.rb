class SoccerCh1Controller < ApplicationController
  
  
  def s_1_main
    @rooms = SoccerCh1.all
  end
  
  def create
    @token = form_authenticity_token
    room = SoccerCh1.new
    room.room_name = params[:room_name]
    room.site = params[:site]
    room.date = params[:date]
    room.save
    redirect_to "/soccer/ch1"
  end

  def new
    @token = form_authenticity_token
  end

end
