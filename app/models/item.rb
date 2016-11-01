class Item < ApplicationRecord
	def completed?
		!completed_at.blank?
	end

	belongs_to :user
end
