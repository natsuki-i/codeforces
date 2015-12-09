a = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

a = a.zip(x).map { |a,x|
  if a < x
    [0, x - a]
  else
    [(a - x)/2, 0]
  end
}

a, x = a.transpose.map{|x| x.inject(&:+)}

if a >= x
  puts "Yes"
else
  puts "No"
end
