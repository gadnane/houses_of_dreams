class LineItem < ActiveRecord::Base
  belongs_to :property
  belongs_to :visit

  validates :property, uniqueness: true
end
