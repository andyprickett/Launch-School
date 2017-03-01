class OrangeTree

  def initialize
    @height = 1
    @age = 0
    @orange_count = 0
    @young_tree = (1..3)
    @fruiting_tree = (4..10)

    puts "You planted your orange tree."
  end

  def height
    if @height == 1
      label = 'foot'
    else
      label = 'feet'
    end
    puts "Your tree is #{@height} #{label} tall."
    @height
  end

  def one_year_passes
    @height += 1
    @age +=1
    puts "The tree has aged one year, and is now #{@age} year(s) old."

    @orange_count = 0
    if @age > 10
      puts "Sadly, this tree has just died from old age."
      exit
    end
    if @fruiting_tree.include?(@age)
      @orange_count = @age * 2
    end
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges on the tree."
    @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      puts "That orange was delicious!"
      @orange_count -= 1
    else
      puts "No oranges (left) to pick this year."
    end
  end

end

tree = OrangeTree.new
tree.height
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.height
9.times do
  tree.pick_an_orange
end
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes

