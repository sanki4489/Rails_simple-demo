class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    #instantiate with form values
    @subject = Subject.new(subject_params)
    #save the subject
    @subject.save
    #check if new subject is created or not
    if @subject.save
      #redirect to index page
      redirect_to(subjects_path)
    else
      #send back  to new form for correction
      render(new)
    end    
  end  

  def index
    @subject = Subject.order('position ASC')
  end
 
  def show
    @subject = Subject.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(show)
    else
      render(edit)
    end    
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end

private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
    
end
