class Reader
#lines are inputted as actual lines in the text file then converted
# to handle the scrolling reader crap.

  def initialize(level, lines)
  @txt = open("./levels/#{level}.txt")
  @lines = lines * 5
  end


def levelOutput
  x = 1
  while x < @lines
    x = x + 1
    sleep($scroll)
    print @txt.readline if x % 5 == 0
  end
end

end
