arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

final = arr.map do |hash|
  inc = {}
  hash.each do |k, v|
    inc[k] = v + 1
  end
  inc
end

# or
# hash.map {|k, v| [k, v + 1]}.to_h

p final
p arr
