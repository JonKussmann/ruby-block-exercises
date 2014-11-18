module Enumerable
	def my_each
		return self unless block_given?
		index = 0
		while index < self.length
			yield(self[i])
			index += 1
		end
	end

	def my_each_with_index
		return self unless block_given?
		index = 0
		while index < self.length
			yield(self[index], index)
			index += 1
		end
	end

	def my_select
		array = []
		self.my_each do |index|
			 if yield(self[index])
			 	array.push(self[index])
			 end
		end
		return array
	end

	def my_all?
		self.my_each do |index|
			return false unless yield(self[index])
		end
		return true
	end

	def my_any?
		self.my_each do |index|
			if yield(self[index])
				return true
			end
		end
		return false
	end

	def my_none?
		self.my_each do |index|
			if yield(self[index])
				return false
			end
		end
		return true
	end

	def my_count(argument = nil)
		count = 0
		if block_given?
			self.my_each do |index|
				if yield(self[index])
					count += 1
				end
			end
		elsif argument.nil?
			count = self.length
		else
			self.my_each do |index|
				if argument == index
					count += 1
				end
			end
		end
		return count
	end

end