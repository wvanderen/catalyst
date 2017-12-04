class PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find(params[:id])
  end

  def new
    @practice = Practice.new
  end
  
  def create
    @practice = Practice.new
    @practice.title = params[:practice][:title]
    @practice.description = params[:practice][:description]
    @practice.experience = params[:practice][:experience]
    @practice.duration = params[:practice][:duration]
    
    if @practice.save
      flash[:notice] = "Practice was saved."
      redirect_to @practice
    else
      flash.now[:alert] = "There was an error saving the practice. Please try again."
      render :new
    end
  end

  def edit
    @practice = Practice.find(params[:id])
  end
  
  def update
    @practice = Practice.find(params[:id])
    @practice.title = params[:practice][:title]
    @practice.description = params[:practice][:description]
    @practice.experience = params[:practice][:experience]
    @practice.duration = params[:practice][:duration]
    
    if @practice.save
      flash[:notice] = "Practice was updated."
      redirect_to @practice
    else
      flash.now[:alert] = "There was an error saving the practice. Please try again."
      render :edit
    end
  end
  
  def destroy
    @practice = Practice.find(params[:id])
    
    if @practice.destroy
      flash[:notice] = "\"#{@practice.title}\"was deleted successfully."
      redirect_to practices_path
    else
      flash.now[:alert] = "There was an error deleting the practice."
      render :show
    end
  end
end
