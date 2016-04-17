class Year
  VERSION = 1
  def self.leap? yr
    (yr % 4 == 0 && yr % 100 != 0) || (yr % 4 == 0 && yr % 100 == 0 && yr % 400 == 0)
  end
end
