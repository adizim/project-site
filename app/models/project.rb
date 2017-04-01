class Project < ApplicationRecord
	serialize :tags, Array
	acts_as_taggable

end
