class Hash	
	def largest_key
	  max_by{ |key, value| value}
	end

	def smallest_key
		min_by{ |key, value| value}
	end
end