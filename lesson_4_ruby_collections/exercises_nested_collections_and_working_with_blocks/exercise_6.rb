[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash = {}
  hash.each do |obj|
    incremented_hash[obj[0]] = obj[1] + 1
  end
  incremented_hash
end
