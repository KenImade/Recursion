def fibs(n)
    fibs_array = []
    for i in 0..n
        if i == 0
            fibs_array << 0
        elsif i == 1
            fibs_array << 1
        else
            fibs_array << fibs_array[i-1] + fibs_array[i-2]
        end
    end
    fibs_array
end

# fibs(6)

def fibs_rec(n)
    return [0] if n.zero?
    return [0,1] if n == 1
    arr = fibs_rec(n-1)
    arr << arr[-2] + arr[-1]
end

p fibs_rec(20)
