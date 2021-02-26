class Contact < ApplicationRecord
  validates :content, presence: true  #,  length: { maximum: 14 }
  validates :content, length: { maximum: 140 }
end
