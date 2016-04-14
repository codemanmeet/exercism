class Prime
  def nth num
    if num == 0
      raise ArgumentError
    end
    prime_arr = []
    search_until = num * (Math.log(num) + 2)
    (2..search_until).each do |i|
      isPrime = (2..(Math.sqrt(i))).all? {|j| i % j != 0}
      prime_arr << i if isPrime
    end
    prime_arr[num - 1]
  end
end
