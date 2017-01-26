statement = "The Flintstones Rock"

statement.chars.each_with_object({}) do |char, hash|
  hash[char] = statement.scan(char).count
end
