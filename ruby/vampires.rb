 puts "How many employees will be processed?"
   employees = gets.chomp.to_i

 until employees == 0
 
   puts "What is your name?"
     name = gets.chomp
   puts "How old are you?"
     age = gets.chomp.to_i
   puts "What year were you born?"
     year = gets.chomp.to_i
   puts "Our company serves garlic bread. Should we order some for you? (Y/N)"
     garlic_bread = gets.chomp.upcase
   puts "Would you like to enroll in the company's health insurance? (Y/N)"
     health_insurance = gets.chomp.upcase

  puts "List an allergy you have. (Type 'none' if n/a)"
  allergy = gets.chomp.downcase
    if allergy == "none"
      puts "You're so healthy!"
    else
      until allergy == "sunshine" || allergy == "done"
        puts "Do you have another allergy? Type 'done' when finished."
        allergy = gets.chomp.downcase   
    end
  end
  current_year = 2016
  
  if (name == "Drake Cula" || name == "Tu Fang")
    vampire_or_nah = "Definitely a vampire."
  elsif (current_year - year == age) && (garlic_bread=="Y" || health_insurance == "Y")
    vampire_or_nah = "Probably not a vampire."
  elsif (current_year - year != age || allergy=="sunshine") && (garlic_bread=="N" || health_insurance=="N")
    vampire_or_nah = "Probably a vampire."
  elsif (current_year - year != age) && (garlic_bread=="N" && health_insurance=="N")
    vampire_or_nah = "Almost certainly a vampire."
  else
    vampire_or_nah = "Results inconclusive."
  end

puts "#{name}: #{vampire_or_nah}"
employees = employees -= 1
puts "#{employees} employees left to process."
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"