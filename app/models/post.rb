class Post < ActiveRecord::Base
	validates :content, length: {minimum: 10}
	validates :title, presence: true
	validate :category_check

	def category_check
		if !(self.category == "Fiction" || self.category == "Non-Fiction")
			self.errors.add(:category, "should be a fiction or non fiction")
			false
		else
			true
		end
	end
end
