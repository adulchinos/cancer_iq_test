class Patient < ActiveRecord::Base
	has_many :cancers
end
