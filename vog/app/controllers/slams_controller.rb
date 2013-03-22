class SlamsController < ApplicationController
  # GET /slams
  # GET /slams.json
  def index
    @slams = Slam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slams }
    end
  end

  # GET /slams/1
  # GET /slams/1.json
  def show
    @slam = Slam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slam }
    end
  end

  # GET /slams/new
  # GET /slams/new.json
  def new
    @slam = Slam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slam }
    end
  end

  # GET /slams/1/edit
  def edit
    @slam = Slam.find(params[:id])
  end

  # POST /slams
  # POST /slams.json
  def create
    @user = User.find(params[:user_id])
    @slam = @user.slams.create(params[:slam])
    redirect_to user_path(@user)
=begin
#I don't know why this code was here/doesn't work...
    respond_to do |format|
      if @slam.save
        format.html { redirect_to @slam, notice: 'Slam was successfully created.' }
        format.json { render json: @slam, status: :created, location: @slam }
      else
        format.html { render action: "new" }
        format.json { render json: @slam.errors, status: :unprocessable_entity }
      end
    end 
=end
    end

  # PUT /slams/1
  # PUT /slams/1.json
  def update
    @slam = Slam.find(params[:id])

    respond_to do |format|
      if @slam.update_attributes(params[:slam])
        format.html { redirect_to @slam, notice: 'Slam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slams/1
  # DELETE /slams/1.json
  def destroy
    @slam = Slam.find(params[:id])
    @slam.destroy

    respond_to do |format|
      format.html { redirect_to slams_url }
      format.json { head :no_content }
    end
  end

  def actions
   end 
    
end
