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
    @@roomid = room.id
    
    redirect_to "/soccer/#{room.id}"
  end

  def new
    @token = form_authenticity_token
  end
  
  
  def show
    @roomnumber = params[:id]
    @memberinroom = Userforroom.new
    @memberinroom.user_email = current_user.email
    @memberinroom.room_id = @roomnumber                 #컬럼명 user 아니고 user_id임
    @memberinroom.save
    @@memberinroom = @memberinroom.id 
    @memberinrooms = Userforroom.where(:room_id => "#{@roomnumber}").all
  end
  
  def destroy
    if Userforroom.where(:room_id => "#{params[:id]}").count == 1
      SoccerCh1.find(params[:id]).delete
      redirect_to "/soccer/ch1"
    else
      Userforroom.find(@@memberinroom).delete
      redirect_to "/soccer/ch1"
    end
    
  end
end
