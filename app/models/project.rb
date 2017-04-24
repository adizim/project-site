class Project < ApplicationRecord
	has_many :applications

	serialize :tags, Array
	acts_as_taggable

end
