class ChangeColumnInComponents < ActiveRecord::Migration
  def change
  	rename_column :components, :status, :available
  end
end
