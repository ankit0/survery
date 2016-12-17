class Api::V1Controller < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:is_login,:add_material]
	
	def get_mobile_list
		mobile_list = SurveyDatum.where(age: params[:age],family_montly_income: params[:family_montly_income]).collect(&:mobile_phone)
		render json: {code: "200", status: true, message: "success" , mobile_list: mobile_list}
	end

end

