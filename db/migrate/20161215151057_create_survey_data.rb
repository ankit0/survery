class CreateSurveyData < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_data do |t|
      t.string :state
      t.string :city
      t.string :geography
      t.string :name
      t.string :phone_no
      t.string :address
      t.integer :number_of_family_member
      t.string :gender
      t.string :age
      t.string :caste
      t.string :family_montly_income
      t.string :occupation
      t.string :monthly_recharge_spend
      t.string :internet_usage
      t.string :hospital
      t.string :school
      t.string :vehicle
      t.string :computer_usage
      t.string :whatsup_usage
      t.string :email_id
      t.string :mobile_phone
      t.string :facebook_account

      t.timestamps
    end
  end
end
