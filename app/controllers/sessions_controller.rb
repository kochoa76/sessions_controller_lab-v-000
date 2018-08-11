class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty? || params[:name].nil? 
      redirect_to controller: 'sessions', action: 'new'
      sessions[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.destroy :name
    redirect_to controller:'application', action: 'hello'

  end


end
