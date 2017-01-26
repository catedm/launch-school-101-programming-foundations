arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

arr.each_with_object([]) do |element1, new_array|
  if element1.size >= 5
    new_array << element1
  else
    element1.each do |element2|
      if element2.size >= 5
        new_array << element2
      elsif
        element2.each do |element3|
          new_array << element3
        end
      end
    end
  end
end
