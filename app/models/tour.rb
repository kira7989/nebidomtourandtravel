class Tour < ApplicationRecord
  belongs_to :destination
  has_many :packages
  has_many_attached :medias
  paginates_per 9
end
