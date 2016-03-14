class Hamming
  VERSION=1
  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError
    end
    diff = 0
    (0..a.length-1).each do |i|
      diff += 1 unless a[i] == b[i]
    end
    diff
  end
end
