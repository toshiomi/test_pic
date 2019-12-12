class AddPersonalityIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :personality_id, :integer,null: false
  end
end
