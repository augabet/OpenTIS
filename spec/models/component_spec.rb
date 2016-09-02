# == Schema Information
#
# Table name: components
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Component, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
