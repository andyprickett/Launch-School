flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_of_be = flintstones.find_index {|name| name.start_with?('Be')}

p index_of_be


