# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  incident_id :integer
#  status      :string
#

class Event < ActiveRecord::Base

	belongs_to :incident

end
