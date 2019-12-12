# Exercise 20 - Shuffler
def shuffler(array, shuffled=[])
   if array.length == 0
      return shuffled
   end
   random = rand(0..array.length - 1)
   shuffled = shuffled.push(array[random])
   array.delete_at(random)
   return shuffler(array, shuffled) #[1,2], [3]
end

print shuffler([1,2,3,4,5,6,7,8,9])

# def shuffler(array)
# new_array = []
#    until array.length == 0
#       random = rand(0..array.length - 1)
#       new_array = new_array.push(array[random])
#       array.delete_at(random)
#    end
#    return new_array
# end