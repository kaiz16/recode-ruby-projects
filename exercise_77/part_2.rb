class Bakery
    @@cookies = []
    def initialize(cookie)
        @@cookies << cookie
    end

    def self.cookies
        @@cookies
    end

    def self.output_cookies
        @@cookies.each_with_index do |cookie, number|
            puts "Cookie #{cookie.object_id}"
            puts "name: #{cookie.name} | circumference: #{cookie.circumference} | baking time: #{cookie.baking_time} sec"
            puts "doughy: #{cookie.doughy} | almost ready: #{cookie.almost_ready} | ready: #{cookie.ready} | burned: #{cookie.burned}"
            puts "\n"
        end
    end
end

class Cookie < Bakery
    attr_accessor :doughy, :almost_ready, :ready,:burned, :baking_time
    attr_reader :name, :circumference
    def initialize(name, circumference, baking_time)
        @name = name
        @doughy, @almost_ready, @ready, @burned = false, false, false, false
        @circumference = circumference
        @baking_time = baking_time
        super(self)
    end

    def set_cookie_status(second)
       reset_cookie_status()
       case
            when second == baking_time
                self.ready = true
            when second >= (baking_time * 60/100) && second <= (baking_time * 90/100)
                self.almost_ready = true
            when second >= (baking_time * 10/100) && second <= (baking_time * 50/100)
                 self.doughy = true
            when second > baking_time
                self.burned = true
        end
    end

    def reset_cookie_status
        self.doughy = false
        self.almost_ready = false
        self.ready = false
        self.burned = false
    end
end

class Tray 
    attr_accessor :tray_cookies, :size
    def initialize(size)
        @size = size
        @tray_cookies = []
    end

    def add_a_cookie(cookie)
        if size < cookie.circumference 
            puts "Tray could not hold any more cookies. Make a new one"
            return
        end
        self.tray_cookies << cookie
        self.size -= cookie.circumference
    end
end

class Oven 
    attr_accessor :tray, :status
    def initialize()
        @status = false
        @tray = false
    end

    def start=(timer) # Start baking
         (1..timer).each do |second|
             puts "Baking... #{second}"
             tray.tray_cookies.each do |cookie|
                #cookie.baking_time -= 1
                cookie.set_cookie_status(second)
            end
       end
    end
    
    def add_tray(tray)
        self.tray = tray
    end

    def remove_tray
        self.tray = false
    end
end


Cookie.new("Peanut", 5, 3) # Cookie name, circumference and baking time
Cookie.new("Chocolate", 5, 3)
Cookie.new("a really bad cookie", 5, 3)
tray = Tray.new(15)
Bakery.cookies.each do |cookie|
    tray.add_a_cookie(cookie)
end
Bakery.output_cookies

oven = Oven.new()
oven.add_tray(tray)
oven.start = 3
oven.remove_tray
Bakery.output_cookies