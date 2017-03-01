class Die

  def initialize
    roll
  end

  def cheat
    loop do
      puts "Which side do you want showing?"
      side_chosen = gets.chomp.to_i
      if side_chosen > 0 && side_chosen < 7
        @number_showing = side_chosen
        return
      end
      puts "Please choose 1 - 6."
    end
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end


die = Die.new
die.cheat
puts die.showing


