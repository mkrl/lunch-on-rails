class WorkersController < ApplicationController
  def new
    @worker = Worker.new 
  end
  
  def create
    @worker = Worker.new(params[:worker])
    if @worker.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Error while signing up"
      flash[:color]= "invalid"
    end
    render "new"
  end  
end
