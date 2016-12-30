flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
Hash[flintstones.map.with_index { |value, index| [value, index] }]
