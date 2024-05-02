class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  validates :user_id, uniquness: {scope: :book_id}
end
