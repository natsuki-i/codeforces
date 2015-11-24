x, y = 2.times.map {
  n, b = gets.split.map(&:to_i)
  gets.split.map(&:to_i).inject{|x,y| x *= b ; x+y}
}
puts '<' if x < y
puts '>' if x > y
puts '=' if x == y
