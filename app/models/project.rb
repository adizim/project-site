class Project < ApplicationRecord
	has_many :applications

	serialize :tags, Array
	acts_as_taggable
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200", robot: "640x320" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end