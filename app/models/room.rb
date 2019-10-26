class Room < ApplicationRecord
	has_many :room_messages, dependent: :destroy, inverse_of: :room
	validates :tm_id, presence: true, uniqueness: true
end
