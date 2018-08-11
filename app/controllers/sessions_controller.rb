class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]
      sessions[:name] = params[:name]
      redirect_to {controller: 'application', 'hello'}
    else
      redirect_to {controller: 'sessions', action: 'new'}
    end
  end 

  def destroy
    session.destroy :name
    redirect_to {controller: 'application', action: 'hello'}

  end


end
