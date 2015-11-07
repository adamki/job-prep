def flatten(array)
  final_array = []                                                           # => []
  array.each_with_index do |index|                                           # => [1, 2, 3, [4, 5, ["wow"]]]
    index.class == Array ? final_array.concat(index) : final_array << index  # => [1], [1, 2], [1, 2, 3], [1, 2, 3, 4, 5, ["wow"]]
  end                                                                        # => [1, 2, 3, [4, 5, ["wow"]]]
  final_array                                                                # => [1, 2, 3, 4, 5, ["wow"]]
end

flatten([1,2,3,[4,5, ["wow"]]])  # => [1, 2, 3, 4, 5, ["wow"]]
