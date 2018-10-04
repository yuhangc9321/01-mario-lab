def pyramid
"    #  #
   ##  ##
  ###  ###
 ####  ####
#####  #####"
end

#puts pyramid

def pyrmd_custom_height(height)
    build = ""
    
    for line_num in 1..height do
        line = ""
        line << " "*(height-line_num) + "#"*line_num + "  " + "#"*line_num
        build << line + "\n"
    end
    
    return build
end

# puts "Enter height:"
# user_height = gets.chomp.to_i
# puts pyrmd_custom_height(user_height)

def pyrmd_chainer(height,chain_length)
    build = ""
    
    for line_num in 1..height do
        line = ""
        line << " "*(height-line_num) + "#"*line_num + "  " + "#"*line_num
        build << line + "\n"
    end

    build*chain_length
end

# puts "Enter height:"
# user_height = gets.chomp.to_i
# puts "Enter chain length:"
# user_chain_length = gets.chomp.to_i
# puts pyrmd_chainer(user_height,user_chain_length)

def pyrmd_alt_invert(height,chain_length)
    build = ""
    complete = ""
    
    for line_num in 1..height do
        line = ""
        line << " "*(height-line_num) + "#"*line_num + "  " + "#"*line_num + " "*(height-line_num)
        build << line + "\n"
    end

    for chain_i in 1..chain_length do
        if chain_i % 2 == 0
            complete << build.reverse + "\n"
        else
            complete << build.chomp
        end
    end
    
    return complete
end

puts "Enter height:"
user_height = gets.chomp.to_i
puts "Enter chain length:"
user_chain_length = gets.chomp.to_i
puts pyrmd_alt_invert(user_height,user_chain_length)