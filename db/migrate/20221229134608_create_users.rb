class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userName, null: false
      t.string :password, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
