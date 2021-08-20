class AccessController < ApplicationController
  
  #display menu
  def menu
    @username = cookies[:username]
  end

  #display login form
  def new
  end

  #pocess login form
  def create
    cookies[:username] = params[:username]
    #do login process
    redirect_to(menu_path)
  end

  #logout user 
  def destroy
    #do logout process here
    redirect_to(login_path)
  end
end
