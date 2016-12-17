require 'test_helper'

class SurveyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_datum = survey_data(:one)
  end

  test "should get index" do
    get survey_data_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_datum_url
    assert_response :success
  end

  test "should create survey_datum" do
    assert_difference('SurveyDatum.count') do
      post survey_data_url, params: { survey_datum: { address: @survey_datum.address, age: @survey_datum.age, caste: @survey_datum.caste, city: @survey_datum.city, computer_usage: @survey_datum.computer_usage, email_id: @survey_datum.email_id, facebook_account: @survey_datum.facebook_account, family_montly_income: @survey_datum.family_montly_income, gender: @survey_datum.gender, geography: @survey_datum.geography, hospital: @survey_datum.hospital, internet_usage: @survey_datum.internet_usage, mobile_phone: @survey_datum.mobile_phone, monthly_recharge_spend: @survey_datum.monthly_recharge_spend, name: @survey_datum.name, number_of_family_member: @survey_datum.number_of_family_member, occupation: @survey_datum.occupation, phone_no: @survey_datum.phone_no, school: @survey_datum.school, state: @survey_datum.state, vehicle: @survey_datum.vehicle, whatsup_usage: @survey_datum.whatsup_usage } }
    end

    assert_redirected_to survey_datum_url(SurveyDatum.last)
  end

  test "should show survey_datum" do
    get survey_datum_url(@survey_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_datum_url(@survey_datum)
    assert_response :success
  end

  test "should update survey_datum" do
    patch survey_datum_url(@survey_datum), params: { survey_datum: { address: @survey_datum.address, age: @survey_datum.age, caste: @survey_datum.caste, city: @survey_datum.city, computer_usage: @survey_datum.computer_usage, email_id: @survey_datum.email_id, facebook_account: @survey_datum.facebook_account, family_montly_income: @survey_datum.family_montly_income, gender: @survey_datum.gender, geography: @survey_datum.geography, hospital: @survey_datum.hospital, internet_usage: @survey_datum.internet_usage, mobile_phone: @survey_datum.mobile_phone, monthly_recharge_spend: @survey_datum.monthly_recharge_spend, name: @survey_datum.name, number_of_family_member: @survey_datum.number_of_family_member, occupation: @survey_datum.occupation, phone_no: @survey_datum.phone_no, school: @survey_datum.school, state: @survey_datum.state, vehicle: @survey_datum.vehicle, whatsup_usage: @survey_datum.whatsup_usage } }
    assert_redirected_to survey_datum_url(@survey_datum)
  end

  test "should destroy survey_datum" do
    assert_difference('SurveyDatum.count', -1) do
      delete survey_datum_url(@survey_datum)
    end

    assert_redirected_to survey_data_url
  end
end
