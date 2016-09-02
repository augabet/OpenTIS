# == Schema Information
#
# Table name: incidents
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Incident < ActiveRecord::Base

	has_many :events , dependent: :destroy

	
end
