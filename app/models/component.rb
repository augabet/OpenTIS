# == Schema Information
#
# Table name: components
#
#  id         :integer          not null, primary key
#  name       :string
#  available  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Component < ActiveRecord::Base
end
