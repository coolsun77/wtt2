class QaeodsController < ApplicationController
  before_action :set_qaeod, only: [:show, :edit, :update, :destroy]

  # GET /qaeods
  # GET /qaeods.json
  def index
    @qaeods = Qaeod.all
  end

  # GET /qaeods/1
  # GET /qaeods/1.json
  def show
  end

  # GET /qaeods/new
  def new
    @qaeod = Qaeod.new
  end

  # GET /qaeods/1/edit
  def edit
  end

  # POST /qaeods
  # POST /qaeods.json
  def create

  @eod = Eod.find(params[:eod_id])
    @qaeod = @eod.qaeods.create(qaeod_params)
    redirect_to user_eod_path(@eod, @eod.user)
    
  end

  # PATCH/PUT /qaeods/1
  # PATCH/PUT /qaeods/1.json
  def update
    respond_to do |format|
      if @qaeod.update(qaeod_params)
        format.html { redirect_to @qaeod, notice: 'Qaeod was successfully updated.' }
        format.json { render :show, status: :ok, location: @qaeod }
      else
        format.html { render :edit }
        format.json { render json: @qaeod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qaeods/1
  # DELETE /qaeods/1.json
  def destroy
    @qaeod.destroy
    respond_to do |format|
      format.html { redirect_to qaeods_url, notice: 'Qaeod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qaeod
      @qaeod = Qaeod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qaeod_params
      params.require(:qaeod).permit!
    end
end
