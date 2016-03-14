class HelloWorld
  def self.hello str=nil
    str.nil? ? "Hello, World!" : "Hello, " + str + "!"
  end
end
