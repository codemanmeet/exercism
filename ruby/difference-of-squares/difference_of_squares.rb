class Squares
  VERSION=2
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    for i in 0..@num
      sum += i
    end
    sum**2
  end

  def sum_of_squares
    sum = 0
    for i in 0..@num
      sum += (i**2)
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
