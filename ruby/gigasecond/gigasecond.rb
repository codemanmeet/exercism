class Gigasecond
  VERSION=1
  def self.from (time)
    Time.at(time.to_i + 1000000000).utc
  end
end
