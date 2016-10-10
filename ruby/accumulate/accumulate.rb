class Array
  def accumulate
    new_arr = []
    each {|x| new_arr << yield(x) }
    new_arr
  end
end
