class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validate :correct_category

  private
    def correct_category
      errors.add(:category, 'incorrect category') unless category.downcase == "fiction" || category.downcase == "non-fiction"
    end
end
