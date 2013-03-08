class UsersController < ApplicationController
	def index
	end

	def list
		@trainings = Program.all
	end
end
