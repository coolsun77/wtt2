class EodsController < ApplicationController
  before_action :set_eod, only: [:show, :edit, :update, :destroy]

  # GET /eods
  # GET /eods.json
  def index
    @eods = Eod.all
  end

  # GET /eods/1
  # GET /eods/1.json
  def show
  end

  # GET /eods/new
  def new
    @eod = Eod.new
  end

  # GET /eods/1/edit
  def edit
  end

  # POST /eods
  # POST /eods.json
  def create
    @eod = Eod.new(eod_params)

    respond_to do |format|
      if @eod.save
        format.html { redirect_to @eod, notice: 'Eod was successfully created.' }
        format.json { render :show, status: :created, location: @eod }
      else
        format.html { render :new }
        format.json { render json: @eod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eods/1
  # PATCH/PUT /eods/1.json
  def update
    respond_to do |format|
      if @eod.update(eod_params)
        format.html { redirect_to @eod, notice: 'Eod was successfully updated.' }
        format.json { render :show, status: :ok, location: @eod }
      else
        format.html { render :edit }
        format.json { render json: @eod.errors, status: :unprocessable_entity }
      end
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
      params.require(:eod).permit(:date, :user_id)
    end
end
