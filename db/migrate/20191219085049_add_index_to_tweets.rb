class AddIndexToTweets < ActiveRecord::Migration[5.2]
  def change
    add_index :tweets,  :name, length: 32
  end
end
