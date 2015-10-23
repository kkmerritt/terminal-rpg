txt = open("rpg.txt")
require_relative("mage")

#----set these to 0 whilst coding, good sir.
scroll = 0.1  #0.1
timer = 0.4   #0.4

print "\n"
print "\n"
print "\n"
print "\n"
print "Please set your Terminal Window to the width of this line\n"
print "--------------------------------------------------------------------------------\n"
gets.chomp


x = 1
while x < 380
  x = x + 1
  sleep(scroll)
  print txt.readline if x % 5 == 0
end

# countdown to pretty pretty picture
x = 5
while x > 0
  print "-------------------------------    #{x}\n"
  sleep(timer)
  x = x - 1
end
print "\n"
print "\n"
print "\n"

print "Are you a (F)ire, (I)ce, or (E)arth Mage? |"
mage_class = gets.chomp
mage_class = mage_class.upcase
if mage_class == ""
  print "Are you a (F)ire, (I)ce, or (E)arth Mage? |"
  mage_class = gets.chomp
  mage_class = mage_class.upcase
end

print "And are you (M)an or (W)oman? |"
gender = gets.chomp
gender = gender.upcase

if gender ==""
  print "And are you (M)an or (W)oman? |"
  gender = gets.chomp
  gender = gender.upcase
else       #begin sexist code
  puts "Ahh your a man...you are terribly stronger than women" if gender == "M"
  puts "Ahhh your a woman...you are terribly smarter than men" if gender == "W"
end

print "Finally, what is your name? |"
char_name = gets.chomp

if mage_class == "F"
  mage_class = "Fire Mage"
  weapon = "bic lighter"
  mage = Mage.new(char_name, gender, mage_class, weapon)

elsif mage_class == "I"
  mage_class = "Ice Mage"
  weapon = "popsicle"
  mage = Mage.new(char_name, gender, mage_class, weapon)

elsif mage_class == "E"
  mage_class = "Earth Mage"
  weapon = "heavy gourd"
  mage = Mage.new(char_name, gender, mage_class, weapon)
else
  print "Are you a (F)ire, (I)ce, or (E)arth Mage?\n"
  mage_class = gets.chomp
end

mage.creationOutput
gets.chomp

x = 5
while x > 0
  print "-------------------------------    #{x}\n"
  sleep(timer)
  x = x - 1
end


puts "End of Program hit a key to exit"
gets.chomp
