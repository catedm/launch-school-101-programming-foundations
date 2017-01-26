flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |word, index|
  if word.start_with?('Be')
    index
  end
end
