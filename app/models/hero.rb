class Hero
  @@all = []
  def self.all
    @@all
  end

  def initialize(attr)
    attr.each {|k, v|
      self.class.attr_accessor(k)
      self.send("#{k}=", v)
    }
    @@all << self
  end
end