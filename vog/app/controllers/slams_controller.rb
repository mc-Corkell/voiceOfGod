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
    @slamFull = @slam.participants.count >= @slam.numParticipants 
    @poet = Poet.new
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
    
    respond_to do |format|
      if @slam.save
        format.html { redirect_to slam_path(@slam), notice: 'Let the Games Begin!' }
        
	format.json { render json: @slam, status: :created, location: @slam }
      else
	format.html { redirect_to user_path(@user, {:errors2 => @user.errors })}
#	format.json { render json: @user.errors, status: :unprocessable_entity }
     end
    end 
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
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slams/1
  # DELETE /slams/1.json
  def destroy
    @slam = Slam.find(params[:id])
    @user = User.find(@slam.user_id)
    @slam.destroy
    redirect_to user_path(@user)
  end

  def actions
   end 
    
end
