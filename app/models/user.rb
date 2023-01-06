class User < ApplicationRecord
	has_many :messages
	has_one :join
	# belongs_to :room
	validates_uniqueness_of :username
  	scope :all_except, ->(user) { where.not(id: user) }
    after_create_commit { broadcast_append_to "users" }
end
