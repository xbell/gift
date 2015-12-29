class CreateReceives < ActiveRecord::Migration
  def change
    create_table :receives do |t|
      t.text :gift
      t.text :from
      t.text :occasion
      t.integer :year

      t.timestamps null: false
    end
  end
end
