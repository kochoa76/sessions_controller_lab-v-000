class SessionsController < ApplicationController
  def new
  end

  def create

    sessions[:name] = params[:name]


  end

  def destroy
    session.destroy :name
    redirect_to {controller: 'application', action: 'hello'}

  end


end
