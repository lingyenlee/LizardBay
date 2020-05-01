class Listing < ApplicationRecord
  belongs_to :breed_id
  belongs_to :user_id
end
