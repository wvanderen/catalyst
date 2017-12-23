class PracticesController < ApplicationController
  
  before_action :set_practice, only: [:show, :edit, :update, :destroy]
  
  def index
    @practices = Practice.all
    render json: @practices
  end

  def show
  end
  
  def create
    @practice = Practice.new(practice_params)
    
    respond_to do |format|
      if @practice.save
        format.json { render :show, status: :created, location: @practice }
      else
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @practice.update(practice_params)
        format.json { render :show, status: :ok, location: @practice }
      else
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @practice.destroy
    
    respond_to do |format|
      format.json { head :no_content }
    end
  end
  
  def start
    #Update for Angular
    @practice = Practice.find(params[:practice_id])
  end
  
  def complete
    #Update for Angular
    @practice = Practice.find(params[:id])
    @user = User.find(params[:user_id])
    
    #Add @practices.experience to @user.experience
    @user.experience += @practice.experience
    
    if @user.save
      flash[:notice] = "Congratulations on completing the practice. You've earned " + @practice.experience + " experience."
      redirect_to practices_path
    else
      flash.now[:alert] = "There was an error completing the practice. Please try again."
      render :show
    end
  end
  
  private
  
  def set_practice
    @practice = Practice.find(params[:id])
    render json: @practice
  end
  
  def practice_params
    params.require(:practice).permit(:title, :description, :threshold, :experience, :type)
  end
  
  def authorize_user
    unless current_user && current_user.admin?
      flash[:alert] = "You must be an admin to do that."
      redirect_to practices_path
    end
  end
end
