class AddReferenceToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :incident, index: true, foreign_key: true
  end
end
