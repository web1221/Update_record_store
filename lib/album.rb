class Album
  attr_reader(:id, :name, :year, :genre, :description)

  @@albums = {}
  @@total_rows = 0

  def initialize(name, year, genre, description, id)
    @name = name
    @year = year
    @genre = genre
    @description = description
    @id = id || @@total_rows += 1
  end

  def save
    @@albums[self.id] = Album.new(self.name, self.year, self.genre, self.description, self.id)
  end

  def ==(album_to_compare)
    self.name() == album_to_compare.name()
  end

  def update(name)
    @name = name
  end

  def delete
    @@albums.delete(self.id)
  end

  # CLASS METHODS
  def self.all()
    @@albums.values().sort{ |x,y| x.name <=> y.name }
  end

  def self.clear
    @@albums = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@albums[id]
  end

  def self.search(type, search)
    @@albums.values.select{
      |album| album.send(type) =~ /#{search}/i
    }.sort{ |x,y| x.name <=> y.name }
  end
end
