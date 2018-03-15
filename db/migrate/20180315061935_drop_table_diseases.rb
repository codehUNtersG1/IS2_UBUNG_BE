class DropTableDiseases < ActiveRecord::Migration[5.1]
  def up
      drop_table :diseases
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
