flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = {}

flintstones.each_with_index do |obj, index|
  new_hash[obj] = index
end
