class Deck < ApplicationRecord
	has_many :sections, dependent: :destroy
	accepts_nested_attributes_for :sections, allow_destroy: true, reject_if: proc { |attributes| attributes['title'].blank? }
end
