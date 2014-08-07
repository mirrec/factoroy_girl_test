class Task < ActiveRecord::Base
  belongs_to :company

  has_one :clock
end
