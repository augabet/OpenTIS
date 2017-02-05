class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end
