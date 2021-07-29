class SubjectsController < ApplicationController
  def new
  end

  def create
  end  

  def index
  end
 
  def show
    @subject = Subject.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
    
end
