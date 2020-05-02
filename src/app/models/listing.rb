class Listing < ApplicationRecord
  # a listing belongs to a breed
  belongs_to :breed

  # a listing belongs to a user
  belongs_to :user


  # enumerate female as 0, male as 1
  enum sex: {female: 0, male: 1}


  # sort by id no, asc
  scope :sorted_id, lambda {order(:id => :desc)} 

end
