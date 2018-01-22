class SessionsController < ApplicationController
  def new
  end
  
  def create
    worker = Worker.find_by(username: params[:username])
    if worker && worker.authenticate(params[:password])
      session[:worker_id] = worker.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now.alert = 'Username or password is invalid'
      render :new
    end
  end  
  
  def destroy
    session[:worker_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end  
  
end
