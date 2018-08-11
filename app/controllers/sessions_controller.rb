class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].empty? || !params[:name]
      redirect_to controller: 'sessions', action: 'new'
    else
      sessions[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.destroy :name
    redirect_to controller:'application', action: 'hello'

  end


end
