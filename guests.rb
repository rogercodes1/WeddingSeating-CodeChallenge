class Guest

  attr_accessor :name, :size, :dislikes, :seated
  ALL = []

  def initialize(name, size, dislikes)
    @name = name
    @size = size
    @dislikes = dislikes
    @seated = false
    ALL << self
  end


  def self.all
    ALL
  end

  def self.guest_array(guests)
    guests.each do |guest|
      data = guest.split(", ", 2)
      name = data[0]
      size = data[1].split('dislikes ')[0].gsub(/[^0-9]/,"").to_i
      dislikes = data[1].split('dislikes ')[1]
      dis_arr = dislikes.split(", ") if dislikes != nil
      Guest.new(name,size, dis_arr)
    end
  end


end

# tables: A-8 B-8 C-7 D-7
# Thornton, party of 3
# Garcia, party of 2
# Owens, party of 6 dislikess Thornton, Taylor
# Smith, party of 1 dislikes Garcia
# Taylor, party of 5
# Reese, party of 7
# Example output:
# Table A
# Thornton, party of 3
# Taylor, party of 5
# Table B
# Smith, party of 1
# Owens, party of 6
# Table C
# Garcia, party of 2
# Table D
# Reese, party of 7
