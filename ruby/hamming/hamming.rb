class Hamming
  VERSION=1
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    diff = 0
    (0...a.length).each do |i|
      diff += 1 unless a[i] == b[i]
    end
    diff
  end
end
