def return_coins(coins, val, c = 0, res = [])
   return res.last if c > val
   res << coins
   res[c] = [] if c == 0
    if c != 0
        coins.each do |v|
            if v <= c
                tmp = res[c - v].clone << v
                res[c] = tmp if tmp.length < res[c].length && tmp.count(v) <= coins.count(v) && tmp.sum == c
                
            end
        end
    end
   res[c] = [] if res[c].sum != c
   return_coins(coins, val, c + 1, res)
end

# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p "Test Case 1 #{return_coins(coins, 15).sort == [10, 5].sort()}"

# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p "Test Case 2 #{return_coins(coins, 1).sort == [1].sort()}"

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p "Test Case 3 #{return_coins(coins, 20).sort == [10, 5, 2, 2, 1].sort()}"

# Test Case 4
coins = []

p "Test Case 4 #{return_coins(coins, 20).sort == [].sort()}"

# Test Case 5
coins = []
5.times do
  coins << 10
end

p "Test Case 5 #{return_coins(coins, 100).sort == [].sort()}"

# Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p "Test Case 5 #{return_coins(coins, 3).sort == [2, 1].sort()}"

# Test Case 6
coins = []
100.times do
  coins << 1
end

p "Test Case 6 #{return_coins(coins, 34).sort == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

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

p "Test Case 7 #{return_coins(coins, 98).sort == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

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
p "Test Case 8 #{return_coins(coins, 98).sort == [50, 20, 15, 10, 1, 1, 1].sort()}"

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

p "Test Case 9 #{return_coins(coins, 33).sort == [11, 11, 11].sort()}"

# Test Case 10
coins = []
3.times do
  coins << 7
end
2.times do
    coins << 2
end
  coins << 50
  coins << 10
  coins << 20

p "Test Case 10 #{return_coins(coins, 71).sort == [50, 7, 7, 7].sort()}"