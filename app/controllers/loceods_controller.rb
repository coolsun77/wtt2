class LoceodsController < ApplicationController
  before_action :set_loceod, only: [:show, :edit, :update, :destroy]

  # GET /loceods
  # GET /loceods.json
  def index
    @loceods = Loceod.all
  end

  # GET /loceods/1
  # GET /loceods/1.json
  def show
  end

  # GET /loceods/new
  def new
    @loceod = Loceod.new
  end

  # GET /loceods/1/edit
  def edit
  end

  # POST /loceods
  # POST /loceods.json
  def create
    @loceod = Loceod.new(loceod_params)

    respond_to do |format|
      if @loceod.save
        format.html { redirect_to @loceod, notice: 'Loceod was successfully created.' }
        format.json { render :show, status: :created, location: @loceod }
      else
        format.html { render :new }
        format.json { render json: @loceod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loceods/1
  # PATCH/PUT /loceods/1.json
  def update
    respond_to do |format|
      if @loceod.update(loceod_params)
        format.html { redirect_to @loceod, notice: 'Loceod was successfully updated.' }
        format.json { render :show, status: :ok, location: @loceod }
      else
        format.html { render :edit }
        format.json { render json: @loceod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loceods/1
  # DELETE /loceods/1.json
  def destroy
    @loceod.destroy
    respond_to do |format|
      format.html { redirect_to loceods_url, notice: 'Loceod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loceod
      @loceod = Loceod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loceod_params
      params.require(:loceod).permit(:eod_id)
    end
end
