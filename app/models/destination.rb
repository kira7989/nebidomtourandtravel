class Destination < ApplicationRecord
	has_many :tours
	has_many_attached :medias
	paginates_per 6
end
