class CreateTestapps < ActiveRecord::Migration
  def change
    create_table :testapps do |t|
      t.string :name
      t.integer :gender
      t.date :birthday

      t.timestamps null: false
    end
  end
end
