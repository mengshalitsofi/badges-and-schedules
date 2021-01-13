def badge_maker(name)
    return "Hello, my name is #{name}."      
end    

def batch_badge_creator(names)
    result = []
    names.each do |name|
        result << badge_maker(name)
    end        
    return result
end

def assign_rooms(speakers)
    arr = []
    speakers.each_with_index do |name, index|
        arr << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end 
    return arr   
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    badges.each do |badge|
        puts badge
    end

    rooms = assign_rooms(attendees)
    rooms.each do |room|
        puts room
    end     
end    

