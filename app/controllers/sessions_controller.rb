class SessionsController < ApplicationController
  def new
    if current_user != nil
      redirect_to :root
    end
  end

  def create
    if params[:name] != '' && params[:name] != nil 
      session[:name] = params[:name]
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
  end
end
