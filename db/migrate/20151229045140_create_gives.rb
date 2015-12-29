class CreateGives < ActiveRecord::Migration
  def change
    create_table :gives do |t|
      t.text :gift
      t.text :to
      t.text :occasion
      t.integer :year

      t.timestamps null: false
    end
  end
end
