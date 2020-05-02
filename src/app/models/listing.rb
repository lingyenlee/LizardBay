class Listing < ApplicationRecord
  # a listing belongs to a breed
  belongs_to :breed

  # enumerate female as 0, male as 1
  enum sex: {female: 0, male: 1}

  # validates for params
  validates :title, :breed_id, :sex, :price, :deposit, :city, :state, :age, presence: true

  #attached image to listing model -> has_one_attached or has_many_attached
  has_one_attached :picture

  # sort by id no, asc
  scope :sorted_id, lambda {order(:id => :asc)} 

end
