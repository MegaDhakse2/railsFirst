class CreateLasts < ActiveRecord::Migration[7.0]
  def change
    create_table :lasts do |t|
      t.string :option

      t.timestamps
    end
  end
end
