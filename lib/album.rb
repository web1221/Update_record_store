class Album
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  @@albums = []

  def self.all()
    @@albums
  end

  def self.find(name)
  end
end
