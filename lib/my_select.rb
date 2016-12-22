def my_select(collection)
  if !collection.empty?
    new_collection = []
    counter = 0
    while counter < collection.length
      if yield(collection[counter]) == true
        new_collection << collection[counter]
      end 
      counter += 1
    end
    return new_collection
  end
end
