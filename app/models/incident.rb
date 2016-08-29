class Incident < ActiveRecord::Base

	has_many :events, dependent: :destroy

	
end
