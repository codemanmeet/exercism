class Complement
  VERSION=3
  def self.of_dna str
    validstr = str.split("").all? do |i|
      %(C G T A).include?(i)
    end
    if(!validstr)
      raise ArgumentError
    end
    str.tr('CGTA', 'GCAU')
  end
end
