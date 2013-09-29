class CharactersController < ApplicationController
	def index
		@test = Character.test
	end
end