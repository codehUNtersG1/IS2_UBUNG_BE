class CreatePhysicalactiviys < ActiveRecord::Migration[5.1]
  def change
    create_table :physicalactiviys do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.string :required_elements

      t.timestamps
    end
  end
end
