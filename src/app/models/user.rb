class User < ApplicationRecord
    has_many :listings, dependent: :destroy
end
