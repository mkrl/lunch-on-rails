class WorkersController < ApplicationController
  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(allowed_params)
    if @worker.save
      redirect_to root_url, notice: 'Signed up'
	  session[:worker_id] = @worker.id
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:worker).permit(:username, :password, :password_confirmation)
  end
end