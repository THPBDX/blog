class User < ApplicationRecord
	has_many :articles
	has_many :like
	has_many :comment
end
