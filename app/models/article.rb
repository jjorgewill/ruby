class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, precense: true

end
