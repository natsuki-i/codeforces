N = gets.to_i
an = gets.split.map(&:to_i)

l = r = n = 0
ans = 0
while l < N && r < N
  r = l = n
  max = an[r]
  min = an[r]
  until max-min > 1
    r += 1
    break if r >= N
    min, max = [min, max, an[r]].minmax
    n = r if n == l && an[l] != an[r]
  end
  ans = [ans, r - l].max
end

puts ans
