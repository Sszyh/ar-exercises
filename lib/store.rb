class Store < ActiveRecord::Base # a Store model, mapped to a stores table
  has_many :employees
end
