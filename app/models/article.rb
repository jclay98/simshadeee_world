class Article < ApplicationRecord
	has_one :category

	scope :active, -> { where(active: true) }
	scope :alphabetical, -> { order('last_name, first_name') }
end
