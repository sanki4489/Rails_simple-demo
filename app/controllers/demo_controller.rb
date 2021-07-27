class DemoController < ApplicationController
  def index
    @array = [1, 2, 3, 6, 4, 8, 1, 0]
    @id = params[:id]
    @page = params[:page]
  end

  def hello
  end 
  
  def about
    render ('about_us')
  end 

  def contact
    if ['us','uk'].include?(params[:country])
      @contact = '(800)1201201'
    elsif params[:country] == 'ut'
      @contact = '(020)4501201'
    else
      @contact = '+1(987)1201201'
    end  
    render ('contact_us')
  end 

end
