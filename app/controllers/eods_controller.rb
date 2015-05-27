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
  #  if (params[:eod]== nil or params[:id]== nil)
   #   redirect_to '/users'
 #   else
       @edate = params[:eod][:date]
 #   end
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
     9.times { @eod.qaeods.build}
      9.times { @eod.loceods.build}
  end

  # POST /eods
  # POST /eods.json
  def create
    
  #  redirect_to user_eod_path(@user,@eod)
 #   render 'show'
   @user = User.find(params[:user_id])
   sumott = 0
   case @user.role
     when "QA"         
        qaeods_attributes = params[:eod][:qaeods_attributes]
        qaeods_attributes.each do |key, value|
          sumott = sumott + value[:Pre_QA_H].to_f + value[:Review_H].to_f  + value[:QA_H].to_f + value[:Bug_Management_H].to_f + value[:Audio_QA_H].to_f + value[:N_Review_H].to_f + value[:N_QA_H].to_f + value[:N_Bug_Management_H].to_f + value[:Project_Management_H].to_f + value[:Other_H].to_f + value[:mis_meeting].to_f +  value[:mis_training].to_f + value[:mis_others].to_f + value[:ab_sickleave].to_f + value[:ab_shiftleave].to_f + value[:ab_annualleave].to_f + value[:ab_holiday].to_f + value[:ab_others].to_f + value[:vpp_H].to_f  +  value[:N_vpp_H].to_f       
        end
      when "Loc"  
        loceods_attributes = params[:eod][:loceods_attributes]
        loceods_attributes.each do |key, value|
          sumott = sumott + value[:familiarization_H].to_f + value[:Review_H].to_f + value[:translation_H].to_f + value[:bugfix_H].to_f + value[:audiodelivery_H].to_f + value[:N_Review_H].to_f + value[:N_translation_H].to_f + value[:N_bugfix_H].to_f + value[:Project_Management_H].to_f + value[:Other_H].to_f + value[:vpp_H].to_f + value[:N_vpp_H].to_f + value[:mis_meeting].to_f + value[:mis_training].to_f + value[:mis_others].to_f + value[:ab_sickleave].to_f + value[:ab_shiftleave].to_f + value[:ab_annualleave].to_f + value[:ab_holiday].to_f + value[:ab_others].to_f + value[:audioonsite_H].to_f + value[:polish_H].to_f
        end
    end
    params[:eod][:sumott] = sumott

    @eod = @user.eods.create(eod_params)


    if  @eod.errors.any?
    render 'new'
  #  render plain: @eod.errors.inspect
    else
      redirect_to @eod.user
    end
    #redirect_to @eod.user


  end

  # PATCH/PUT /eods/1
  # PATCH/PUT /eods/1.json
  def update
     @eod = Eod.find(params[:id])
     @user = @eod.user
     sumott = 0
     case @user.role
       when "QA"         
          qaeods_attributes = params[:eod][:qaeods_attributes]
          qaeods_attributes.each do |key, value|
            sumott = sumott + value[:Pre_QA_H].to_f + value[:Review_H].to_f  + value[:QA_H].to_f + value[:Bug_Management_H].to_f + value[:Audio_QA_H].to_f + value[:N_Review_H].to_f + value[:N_QA_H].to_f + value[:N_Bug_Management_H].to_f + value[:Project_Management_H].to_f + value[:Other_H].to_f + value[:mis_meeting].to_f +  value[:mis_training].to_f + value[:mis_others].to_f + value[:ab_sickleave].to_f + value[:ab_shiftleave].to_f + value[:ab_annualleave].to_f + value[:ab_holiday].to_f + value[:ab_others].to_f + value[:vpp_H].to_f  +  value[:N_vpp_H].to_f       
          end
        when "Loc"  
          loceods_attributes = params[:eod][:loceods_attributes]
          loceods_attributes.each do |key, value|
            sumott = sumott + value[:familiarization_H].to_f + value[:Review_H].to_f + value[:translation_H].to_f + value[:bugfix_H].to_f + value[:audiodelivery_H].to_f + value[:N_Review_H].to_f + value[:N_translation_H].to_f + value[:N_bugfix_H].to_f + value[:Project_Management_H].to_f + value[:Other_H].to_f + value[:vpp_H].to_f + value[:N_vpp_H].to_f + value[:mis_meeting].to_f + value[:mis_training].to_f + value[:mis_others].to_f + value[:ab_sickleave].to_f + value[:ab_shiftleave].to_f + value[:ab_annualleave].to_f + value[:ab_holiday].to_f + value[:ab_others].to_f + value[:audioonsite_H].to_f + value[:polish_H].to_f
          end
      end
    params[:eod][:sumott] = sumott
 
    if  @eod.errors.any?
      render 'edit'
    else
      if @eod.update(eod_params)
        redirect_to @eod.user
      else
        render 'edit'
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
      params.require(:eod).permit!
    end

     def qaeod_params
      params.require(:qaeod).permit!
    end
end
