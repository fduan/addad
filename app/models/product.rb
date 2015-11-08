class Product < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }

	validates :name, presence: true

	acts_as_commentable

end
