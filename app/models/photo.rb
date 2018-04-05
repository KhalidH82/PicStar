class Photo < ApplicationRecord
  # belongs_to :user
	validates :image, presence: true

  has_attached_file :image, styles: { :medium => "400x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
