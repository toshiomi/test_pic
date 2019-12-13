class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :personality
  belongs_to :user
  has_many :likes, dependent: :destroy
end
