class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens

  def must_carry_mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry at least 1 type of apparel")
    end
  end

end