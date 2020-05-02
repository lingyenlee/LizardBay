class Breed < ApplicationRecord
    has_many :listings, dependent: :destroy

    scope :sorted_name, lambda { order(:name)} 
end
