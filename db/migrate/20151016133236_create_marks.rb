class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps null: false
    end
    add_index :marks, :user_id
  end
end
