class Deck < ApplicationRecord
	has_many :sections, dependent: :destroy
end
