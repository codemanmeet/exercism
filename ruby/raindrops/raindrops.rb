class Raindrops
  VERSION=1
  def self.convert(num)
    fin_str = ''
    if (num % 3 == 0)
      fin_str.concat('Pling')
    end
    if (num % 5 == 0)
      fin_str.concat('Plang')
    end
    if (num % 7 == 0)
      fin_str.concat('Plong')
    end
    if (fin_str.empty?)
      fin_str.concat(num.to_s)
    end
    fin_str
  end
end
