class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo, dependent: :destroy
end
