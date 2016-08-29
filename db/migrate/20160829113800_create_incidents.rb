class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :title
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
