class Company < ActiveRecord::Base
  has_many :tasks
  has_many :clocks
end
