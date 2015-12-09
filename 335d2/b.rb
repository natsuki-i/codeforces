X, Y, x, y = gets.split.map(&:to_i)
s = gets.chomp!

ans = []

m = []
X.times{ |x|
  m[x+1] = []
  Y.times { |y|
    m[x+1][y+1] = true
  }
}

s.each_char do |c|
  if m[x][y]
    ans << 1
    m[x][y] = false
  else
    ans << 0
  end
  case c
  when 'L'
    y -= 1
  when 'R'
    y += 1
  when 'U'
    x -= 1
  when 'D'
    x += 1
  end
  x = [[1, x].max, X].min
  y = [[1, y].max, Y].min
end

ans << X * Y - ans.inject(&:+)

puts ans.join(' ')
