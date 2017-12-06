class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.integer :experience
      t.references :user, index: true, foreign_key: true
      t.integer :slots

      t.timestamps null: false
    end
  end
end
