class EodsController < ApplicationController

  # GET /eods
  # GET /eods.json
  def index
    @eods = Eod.all
  end

  # GET /eods/1
  # GET /eods/1.json
  def show
      @user = User.find(params[:user_id])
      @eod = Eod.find_by(params[:id]) 
  end

  # GET /eods/new
  def new
    @edate = params[:eod][:date]
      if Eod.find_by(date: @edate, user_id: params[:id]) 
         @eod= Eod.find_by(date: @edate, user_id: params[:id]) 
         @user = @eod.user
       #  @qaeod = Qaeod.find_by(eod_id: @eod.id)
         render 'edit'
      else
      @user = User.find(params[:id])
      @eod = @user.eods.new(:user=>@user, :date =>@edate )
      9.times { @eod.qaeods.build}
      9.times { @eod.loceods.build}
#      self.create
#@qaeod = @eod.new
    end
  end

  # GET /eods/1/edit
  def edit
     @user = User.find(params[:user_id])
     @eod = Eod.find_by(params[:id]) 
  end

  # POST /eods
  # POST /eods.json
  def create
    @user = User.find(params[:user_id])
    @eod = @user.eods.create(eod_params)
  #  redirect_to user_eod_path(@user,@eod)
 #   render 'show'
    redirect_to @eod.user


  end

  # PATCH/PUT /eods/1
  # PATCH/PUT /eods/1.json
  def update
     @eod = Eod.find(params[:id])
 
    if @eod.update(eod_params)
      redirect_to @eod.user
    else
      render 'edit'
    end
  end

  # DELETE /eods/1
  # DELETE /eods/1.json
  def destroy
    @eod.destroy
    respond_to do |format|
      format.html { redirect_to eods_url, notice: 'Eod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eod
      @eod = Eod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eod_params
      params.require(:eod).permit!
    end

     def qaeod_params
      params.require(:qaeod).permit!
    end
end
