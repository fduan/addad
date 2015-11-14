class Product < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }

	validates :name, presence: true

	acts_as_commentable

	acts_as_likeable

	include PublicActivity::Model
	tracked only: [:create], owner: Proc.new{ |controller, model| controller && controller.current_user }
end
