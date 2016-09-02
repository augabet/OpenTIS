class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.string :status

      t.timestamps null: false
    end
  end
end
