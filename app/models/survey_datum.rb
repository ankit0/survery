class SurveyDatum < ApplicationRecord
	validates :phone_no,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates_format_of :email_id, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i    
    validates_format_of :name, :with => /\w+/, :message => "can only contain characters"  
end
