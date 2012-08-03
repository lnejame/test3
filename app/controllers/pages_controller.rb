class PagesController < ApplicationController
 # before_filter :authenticate_user!
  def home
    
    def new
    @info_form = InfoForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @info_form }
    end
    
    def create
    @info_form = InfoForm.new(params[:info_form])

    respond_to do |format|
      if @info_form.save
        format.html { redirect_to root_path, notice: 'Project submitted successfully' }
      
      else
        format.html { render action: "new" }
        format.json { render json: @info_form.errors, status: :unprocessable_entity }
      end
    end
    
    
  end
  end
   
  end

  def about
  end

  def help
  end

  def contact
  end
  
   
end
