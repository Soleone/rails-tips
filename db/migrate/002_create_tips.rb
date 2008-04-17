class CreateTips < ActiveRecord::Migration
  def self.up
    create_table :tips do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tips
  end
end
