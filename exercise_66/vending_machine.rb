# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins, target_amount, coins_to_return = [])
remaining_coins = remaining_coins.sort.reverse # Sort it from descending
# Return nil if vending machine has no coins or user asks for more than what we have
 if target_amount == 0  || remaining_coins.empty? || remaining_coins.inject(0){|sum,x| sum + x } < target_amount # Base case for recursion
    return coins_to_return
 end


# p "coins return is now #{coins_to_return} | remaining #{remaining_coins} | target  #{target_amount}"
# sleep(1)
def process_coins(remaining_coins, target_amount, coins_to_return)
coin = 0
index_of_coin = 0
modulos_of_target_amount = (2..target_amount).to_a.select{|x| target_amount % x == 0}.sort.reverse
modulos_exist = false
    modulos_of_target_amount.each do |x|
        if remaining_coins.include?(x)
            modulos_exist = true
            coin = x
            index_of_coin = remaining_coins.index(coin)
            break
        end
    end
    if !modulos_exist
        for i in 0..remaining_coins.length - 1
            if remaining_coins[i] <= target_amount && remaining_coins[i] > coin
                coin = remaining_coins[i]
                index_of_coin = i
            end
        end
    end
    coins_to_return.push(coin)
    target_amount -= coin
    remaining_coins.delete_at(index_of_coin) # delete it from machine 
    return_coins(remaining_coins, target_amount, coins_to_return) # Recursion 
end

    process_coins(remaining_coins, target_amount, coins_to_return)
end

# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 15).sort == [10, 5].sort()

# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 1).sort == [1].sort()

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 20).sort == [10, 5, 2, 2, 1].sort()

# Test Case 4
coins = []

p return_coins(coins, 20).sort == [].sort()

# Test Case 5
coins = []
5.times do
  coins << 10
end

p return_coins(coins, 100).sort == [].sort()

# Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 3).sort == [2, 1].sort()

# Test Case 6
coins = []
100.times do
  coins << 1
end

p return_coins(coins, 34).sort == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1].sort()

# Test Case 7
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

p return_coins(coins, 98).sort == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1].sort()

# Test Case 8
coins = []
8.times do
  coins << 1
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end

p return_coins(coins, 98).sort == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1].sort()

# Test Case 9
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 50
  coins << 10

p return_coins(coins, 33).sort == [11, 11, 11].sort()