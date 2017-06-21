class MainViewController < ApplicationController

  def login
    user = User.where(:Email => params[:Email]).where(:Password => params[:Password]).first
    render json: user
  end

  def userLoad
    user = User.where(:id => params[:userID])
    render json: user
  end

  def mainPostLoad
    @PostAccess=PostAccess.where({FriendId:params[:UserId]})

    render json: @PostAccess.to_json(:include => [:user, {post: {:include => :user}}])
  end

  def mainRequestLoad
    temp = Array.new
    @user_friend = Userfriend.where({:UserID => params[:FriendID]}).where({Pending: 'true'}).each do |pa|
      temp << pa.FriendID
    end
    render json: Userfriend.where(FriendID: temp)
  end

  def mainCounterLoad
    temp = Array.new

    counterdata = Post.where({:UserID => params[:UserID]}).each do |k|
      temp << k.Counter
    end
    render json: Post.where(UserID: temp)
  end

end
