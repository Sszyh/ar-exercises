class Store < ActiveRecord::Base # a Store model, mapped to a stores table
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :carry_at_least_mens_or_womens_apparel
  def carry_at_least_mens_or_womens_apparel
    unless mens_apparel ==true || womens_apparel == true
      errors.add(:mens_apparel,"Stores must carry at least one of the men's or women's apparel")
    end 
  end
end
