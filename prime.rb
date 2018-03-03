## Uncomment line 2 and lines 12-19 to use Benchmark testing
# require'benchmark'


def prime?(number)
  return true if number == 2
  return false if number <= 1 || number.even?
  poss_divisors = ((3..(number - 1)/2).select{|num| num.odd?}).to_a
  !poss_divisors.any? { |div| number % div == 0 }
end

# puts Benchmark.measure{prime?(68351)}
# puts prime?(68351)
# puts Benchmark.measure{prime?(100069)}
# puts prime?(100069)
# puts Benchmark.measure{prime?(104729)}
# puts prime?(104729)
# puts Benchmark.measure{prime?(104725)}
# puts prime?(104725)

good_candidates = ((3..99).select{|num| num.odd?}).to_a
candidates = (1..100).to_a
primes_to_100 = [2]

good_candidates.each do |can|
  primes_to_100 << can if prime?(can)
end

puts primes_to_100.inspect
