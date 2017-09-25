class Address < ApplicationRecord
	geocoded_by :address
	after_validation :geocode

	validates :title, presence: true, 
					  length: { minimum: 2}

	validates :address, presence: true,
						length: { minimum: 5}
end
