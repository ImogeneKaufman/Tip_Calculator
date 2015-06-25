def tip_calculator(service)
  
  if service == "excellent"
    tip = 1.2
  elsif service == "good"
    tip = 1.15
  elsif service == "mediocre"
    tip = 1.1
  elsif service == "terrible"
    tip = 1.05
  
  end
  
  return tip
  
end 

def individual_price(t, c, pp)
  t * c / pp
end

# def currency_converter(individual_price, new_currency)
#   if currency = dollars
# end

puts "Was your service excellent, good, mediocre, or terrible?" 
service = gets.chomp
until service == "good" || service == "excellent" || service == "mediocre" || service == "terrible"
    puts "The calculator did not understand your answer. Please enter excellent, good, mediocre, or terrible."
service = gets.chomp
end
tip = tip_calculator(service)

puts "How much did the meal cost?"
cost = gets.chomp.to_f
until cost > 0
puts "Please enter a valid number."
cost = gets.chomp.to_f
end

puts "How many people will be paying?"
  people_present = gets.chomp.to_f
until cost > 0
puts "Please enter a valid number."
people_present = gets.chomp.to_f
end

puts "You each should pay $" + individual_price(tip, cost, people_present).to_s

# puts "W"