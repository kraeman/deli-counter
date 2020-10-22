# Write your code here.
def line(array)
    new_array = []
    if array.size == 0
        puts "The line is currently empty."
    else
        line_size = array.size
        counter = 1
        new_string = "The line is currently: "
        array.each do |person|
            if person != array.last
                new_string += counter.to_s + ". " + person + " "
                counter += 1
            else
                new_string += counter.to_s + ". " + person
                counter += 1
            end
        end 
        puts new_string  
    end
end      


def take_a_number(katz_deli, last_person)
    puts "Welcome, #{last_person}. You are number #{katz_deli.size + 1} in line."
    katz_deli.push(last_person)
end    


def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else    
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end    
end    