def bubble_sort(array)
	search_length = array.length - 1

	while search_length > 0
		search_length.times do |index|
			if array[index] > array[index + 1]
				array[index], array[index + 1] = array[index + 1], array[index]
			end
		end
		search_length -= 1

	end

	return array
end

def bubble_sort_by(array)
	search_length = array.length - 1

	while search_length > 0
		search_length.times do |index|
			if yield(array[index], array[index + 1]) < 0
				array[index], array[index + 1] = array[index + 1], array[index]
			end

		end
		search_length -= 1
	end
	return array
end