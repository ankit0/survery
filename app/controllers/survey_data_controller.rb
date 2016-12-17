class SurveyDataController < ApplicationController
  before_action :set_survey_datum, only: [:show, :edit, :update, :destroy]

  # GET /survey_data
  # GET /survey_data.json
  def index
    @survey_data = SurveyDatum.all
  end

  # GET /survey_data/1
  # GET /survey_data/1.json
  def show
  end

  # GET /survey_data/new
  def new
    @survey_datum = SurveyDatum.new
  end

  # GET /survey_data/1/edit
  def edit
  end

  # POST /survey_data
  # POST /survey_data.json
  def create
    @survey_datum = SurveyDatum.new(survey_datum_params)

    respond_to do |format|
      if @survey_datum.save
        format.html { redirect_to @survey_datum, notice: 'Survey datum was successfully created.' }
        format.json { render :show, status: :created, location: @survey_datum }
      else
        format.html { render :new }
        format.json { render json: @survey_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_data/1
  # PATCH/PUT /survey_data/1.json
  def update
    respond_to do |format|
      if @survey_datum.update(survey_datum_params)
        format.html { redirect_to @survey_datum, notice: 'Survey datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_datum }
      else
        format.html { render :edit }
        format.json { render json: @survey_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_data/1
  # DELETE /survey_data/1.json
  def destroy
    @survey_datum.destroy
    respond_to do |format|
      format.html { redirect_to survey_data_url, notice: 'Survey datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_datum
      @survey_datum = SurveyDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_datum_params
      params.require(:survey_datum).permit(:state, :city, :geography, :name, :phone_no, :address, :number_of_family_member, :gender, :age, :caste, :family_montly_income, :occupation, :monthly_recharge_spend, :internet_usage, :hospital, :school, :vehicle, :computer_usage, :whatsup_usage, :email_id, :mobile_phone, :facebook_account)
    end
end
