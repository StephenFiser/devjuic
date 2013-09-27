class Hash	
	def largest_hash_key
	  max_by{|k,v| v}
	end
end