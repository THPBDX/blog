class Article < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :comment
	has_many :like 
end
