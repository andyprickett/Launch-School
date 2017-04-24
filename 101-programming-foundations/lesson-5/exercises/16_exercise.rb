def uuid_maker
  hexes = ('0'..'9').to_a + ('a'..'f').to_a
  chr_amts = [ 8, 4, 4, 4, 12 ]
  uuid = []


  chr_amts.each do |amt|
    section = ''
    amt.times do
      section << hexes.sample
    end
    uuid << section
  end

  uuid.join('-')
end


p uuid_maker
