# require_relative '../config/environment'
require 'pry'

class Artist
  extend Memorable::ClassMethods      #defines the method as a class method, vs instance method (uses include keyword)
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods  #refers to nested module
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    #self.class.all << self   is the same as   @@artists << self   <<- see memorable module
    super   #uses code in module but ALSO implements this
    @songs = []
  end


  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
  
end
