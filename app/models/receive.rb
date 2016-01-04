class Receive < ActiveRecord::Base
  validates :gift, presence: true
  validates :from, presence: true
  validates :occasion, presence: true
  validates :year, presence: true
end
