class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :experience

      t.timestamps null: false
    end
  end
end
