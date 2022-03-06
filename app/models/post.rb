class Post < ApplicationRecord
	has_many_attached :medias
	paginates_per 6
end
