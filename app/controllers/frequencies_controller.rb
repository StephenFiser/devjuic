class FrequenciesController < ApplicationController
	def index
	end

	def create
		@freq = Frequency.new(params[:input_text])
		respond_to do |format|
			format.js
		end
	end
end
