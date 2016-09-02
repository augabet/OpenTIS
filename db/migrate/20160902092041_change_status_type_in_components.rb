class ChangeStatusTypeInComponents < ActiveRecord::Migration
  def change
    change_column :components, :status, :boolean
  end
end
