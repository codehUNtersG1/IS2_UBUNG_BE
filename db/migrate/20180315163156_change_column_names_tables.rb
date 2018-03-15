class ChangeColumnNamesTables < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :groups, :type, :sort
    rename_column :foods, :type, :sort
    rename_column :plans, :type, :sort
  end
end
