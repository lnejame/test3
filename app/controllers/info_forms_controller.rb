class InfoFormsController < ApplicationController
  before_filter :authenticate_user!, except: [:new, :create]
  

  def new
    @info_form = InfoForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @info_form }
    end
  end
 

  # GET /info_forms
  # GET /info_forms.json
  def index
    @info_forms = InfoForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @info_forms }
    end
  end

  # GET /info_forms/1
  # GET /info_forms/1.json
  def show
    @info_form = InfoForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @info_form }
    end
  end

  # GET /info_forms/new
  # GET /info_forms/new.json
  

  # GET /info_forms/1/edit
  def edit
    @info_form = InfoForm.find(params[:id])
  end

  # POST /info_forms
  # POST /info_forms.json
  def create
    @info_form = InfoForm.new(params[:info_form])

    respond_to do |format|
      if @info_form.save
        format.html { redirect_to @info_form, notice: 'Info form was successfully created.' }
        format.json { render json: @info_form, status: :created, location: @info_form }
      else
        format.html { render action: "new" }
        format.json { render json: @info_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /info_forms/1
  # PUT /info_forms/1.json
  def update
    @info_form = InfoForm.find(params[:id])

    respond_to do |format|
      if @info_form.update_attributes(params[:info_form])
        format.html { redirect_to @info_form, notice: 'Info form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @info_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_forms/1
  # DELETE /info_forms/1.json
  def destroy
    @info_form = InfoForm.find(params[:id])
    @info_form.destroy

    respond_to do |format|
      format.html { redirect_to info_forms_url }
      format.json { head :no_content }
    end
  end
end
