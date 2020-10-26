katz_deli = []

def line(line_array)
  #check if line is empty
  if line_array.size == 0
    #output message if line is empty
    puts "The line is currently empty."
  else
    #string to build upon for output
    line_message = "The line is currently: "
    #iterate over each item in the given array
    line_array.each_with_index do |name, index|
      #add place in line (index + 1) and name to line_message string
      line_message += "#{index + 1}. #{name} "
    end
    #output the built-up string with trailing space removed
    puts line_message.rstrip
  end
end

def take_a_number(line_array, name)
  #shovel new customer to end of line_array
  line_array << name
  #output message welcoming customer and notifying them of their place in line
  puts "Welcome, #{name}. You are number #{line_array.size} in line."
end

def now_serving(line_array)
  #check if line is empty
  if line_array.size == 0
    #output message if line is empty
    puts "There is nobody waiting to be served!"
  else
    #remove first person in line_array with shift method
    #store value in current_customer variable for clarity
    current_customer = line_array.shift
    #output message with customer being served
    puts "Currently serving #{current_customer}."
  end
end 