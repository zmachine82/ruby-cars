puts "Let's add a car!"

def ask_question(value)
    puts ""
    puts "What is the car's #{value}?"
    gets.chomp
end

year = ask_question("year")
make = ask_question("make")
model = ask_question("model")
color = ask_question("color")
value = ask_question("value")

puts ""
puts "You added a: "
puts "#{year} #{color} #{make} #{model} worth approximately $#{value}"
