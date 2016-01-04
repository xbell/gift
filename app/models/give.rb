class Give < ActiveRecord::Base
  validates :gift, presence: true
  validates :to, presence: true
  validates :occasion, presence: true
  validates :year, presence: true
end
