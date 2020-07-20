require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'



class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods 
  include Paramble::InstanceMethods
  include Memorable::InstanceMethods

  @@songs=[]
  
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

 
end
