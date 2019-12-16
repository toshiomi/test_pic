class AddColumnTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :h, :integer, default: 0,null: false
    add_column :tweets, :a, :integer, default: 0,null: false
    add_column :tweets, :b, :integer, default: 0,null: false
    add_column :tweets, :c, :integer, default: 0,null: false
    add_column :tweets, :d, :integer, default: 0,null: false
    add_column :tweets, :s, :integer, default: 0,null: false

  end
end
