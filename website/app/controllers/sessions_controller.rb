class SessionsController < ApplicationController



  post '/sessions/new' do
    @user = User.authenticate(params[:email], params[:password])
    if @user
      login(@user)

      redirect "/users/#{@user.id}"
    else
      @error = "Email or password incorrect!"
      erb :'/sessions/new'
    end
  end

  get '/sessions/delete' do
    session[:user_id] = nil

    redirect '/'
  end

  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
