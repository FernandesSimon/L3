require File.dirname(__FILE__) + "/Moves"

class Guess
	@prev
	@grid

	@moves

	attr_reader :grid

	def initialize(grid, prev = nil)
		@prev = prev
		@grid = grid
		@moves = Moves.new()
	end

	def root?
		@prev == nil
	end

	def next
		Guess.new(@grid.copyFrozen, self)
	end

	def cellAt(row, col)
		@grid.cellAt(row, col)
	end


end
