# Based on your code for Exercise 10, create a Day Organiser

# First, ask for a time as a single input string in military time (e.g. “16:30”) or standard time (e.g. 04:30PM)
# Then, ask for the activity that will be happening during that time as a string
# Ask the user if that is the last activity they would like to input (Y/N)
# If it’s the last activity, then, list out in order of the day, the activity of the day, together with the time in standard time.
# e.g. Your output should be:
# Your activities today are:
# 04:30AM - Wake up, eat breakfast
# 05:30AM - Go to the gym
# 08:00AM - Head for Recode Class
def input_activities()
    activities = {}
    loop do # this keeps looping until last_activity returns true
        print "Input time in standard format (e.g 8:00AM) "
        time = gets.chomp 
            if time.match(/\A([1][0-2]|[1-9]):([0-5][0-9])(AM|PM)\z/) # This regex accepts only if hour is in 12 hour range and minute is in 59 minute range followed by AM or PM.
                puts "What is your plan at #{time} ?"
                activity = gets.chomp
                activities[time] = activity
                return output_activities(activities) if last_activity?() # checking at each loop
            end 
    end
end

def last_activity?()
    puts "Is that your last activity for today? (y/n)"
    last_activity = gets.chomp
        if last_activity.match(/\Ay\z/i)
            return true
        elsif last_activity.match(/\An\z/i)
            return # false
        end
    return last_activity?() 
end

def output_activities(activities)
    ams=activities.select{|x| x.match(/AM/)}.sort_by do |time, activity| # Sort the time in AM
        if time.match(/\d\d?/).to_s.to_i == 12 # Day starts at 12AM so output that first
                time = "00"
        end
        time.match(/\d\d?/).to_s.to_i 
    end
    pms=activities.select{|x| x.match(/PM/)}.sort_by do |time, activity| # Sort the time in PM
        if time.match(/\d\d?/).to_s.to_i == 12 
            time = "00"
        end
        time.match(/\d\d?/).to_s.to_i 
    end
    sorted_activities = ams + pms
    sorted_activities.each do |x|
        puts "#{x[0]} - #{x[1]}"
    end
end

input_activities()