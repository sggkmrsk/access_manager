class Record < ApplicationRecord
  belongs_to :user
  validates :entered_at ,presence: true
end
