
require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self      
    #calls the #all instance method inside the #initialize instance method
    #stores all instances inside the #all method below
    # @@songs << self
  end


  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

  
end
