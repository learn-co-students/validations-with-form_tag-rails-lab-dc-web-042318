class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: :allowed_categories}
end

def allowed_categories
  ["Fiction", "Non-Fiction"]
end
