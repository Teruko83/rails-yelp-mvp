class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion:
      { in: %w[chinese italian japanese french belgian] }
end


 # has a name
 #  has an address
 #  has a phone number (FAILED - 1)
 #  has a category
 #  name cannot be blank (FAILED - 2)
 #  address cannot be blank (FAILED - 3)
 #  category cannot be blank (FAILED - 4)
 #  neptunian is not a valid category (FAILED - 5)
 #  chinese is a valid category (FAILED - 6)
 #  italian is a valid category (FAILED - 7)
 #  japanese is a valid category (FAILED - 8)
 #  french is a valid category (FAILED - 9)
 #  belgian is a valid category (FAILED - 10)
 #  has many reviews (FAILED - 11)
 #  should destroy child reviews when destroying self (FAILED - 12)
