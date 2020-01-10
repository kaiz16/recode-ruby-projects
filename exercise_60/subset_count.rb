def subset_count(n, k)
    return 0 if n == 0
    return 1 if k == 0
    return n if k == 1
    subset_count(n - 1, k - 1) + subset_count(n - 1, k)
end

p subset_count(3, 2) 

