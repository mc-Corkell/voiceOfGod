class PoetsController < ApplicationController
  # GET /poets
  # GET /poets.json
  def index
    @poets = Poet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poets }
    end
  end

  # GET /poets/1
  # GET /poets/1.json
  def show
    @poet = Poet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poet }
    end
  end

  # GET /poets/new
  # GET /poets/new.json
  def new
    @poet = Poet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poet }
    end
  end

  # GET /poets/1/edit
  def edit
    @poet = Poet.find(params[:id])
  end

  # POST /poets
  # POST /poets.json
  def create
    @poet = Poet.new(params[:poet])

    respond_to do |format|
      if @poet.save
        format.html { redirect_to @poet, notice: 'Poet was successfully created.' }
        format.json { render json: @poet, status: :created, location: @poet }
      else
        format.html { render action: "new" }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poets/1
  # PUT /poets/1.json
  def update
    @poet = Poet.find(params[:id])

    respond_to do |format|
      if @poet.update_attributes(params[:poet])
        format.html { redirect_to @poet, notice: 'Poet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poets/1
  # DELETE /poets/1.json
  def destroy
    @poet = Poet.find(params[:id])
    @poet.destroy

    respond_to do |format|
      format.html { redirect_to poets_url }
      format.json { head :no_content }
    end
  end
end
