class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :personality
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('name LIKE(?)', "%#{search}%")
  end
end
