class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  CATEGORYS = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORYS, message: "the category is not valid"}
end
