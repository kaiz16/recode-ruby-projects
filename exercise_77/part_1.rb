class Bakery
    @@cookies = []
    def initialize(cookie)
        @@cookies << cookie
    end

    def self.cookies
        @@cookies
    end
end

class Cookie < Bakery
    attr_accessor :name, :ready
    def initialize(name)
        @name = name
        @ready = false
        super(self)
    end
end


class Oven < Cookie
    attr_accessor :oven_cookies
    def initialize
        @oven_cookies = []
    end

    def insert_cookie(cookie)
        oven_cookies << cookie
    end

    def remove_cookies
        self.oven_cookies = []
    end

    def start=(seconds)
        if oven_cookies.empty?
            puts "No cookies inside oven. Cannot start"
            return
        end
        until seconds == 0
            puts "Baking... #{seconds}"
            seconds -= 1
        end
        oven_cookies.each {|cookie| cookie.ready = true} 
    end
end

Cookie.new("Coconut")
Cookie.new("Peanut Butter")
Cookie.new("Chocolate")

p Bakery.cookies
oven = Oven.new()
Bakery.cookies.each do |cookie|
    oven.insert_cookie(cookie)
end
oven.start = 3
oven.remove_cookies
p Bakery.cookies