class PhotoTaggedUser < ApplicationRecord
  belongs_to :photo
  belongs_to :user
end
