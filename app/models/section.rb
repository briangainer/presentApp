class Section < ApplicationRecord
	belongs_to :deck
	validates_numericality_of :time, :only_integer => true, :greater_than_or_equal_to => 0
end
