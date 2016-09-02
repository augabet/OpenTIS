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

require 'rails_helper'

RSpec.describe Event, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
