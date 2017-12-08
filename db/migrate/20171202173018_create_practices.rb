class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :description
      t.integer :threshold
      t.integer :experience
      t.integer :type

      t.timestamps null: false
    end
  end
end
