class Guest

  attr_accessor :name, :size, :dislike
  ALL = []

  def initialize(name, size, dislike)
    @name = name
    @size = size
    @dislike = dislike
    ALL << self
  end


  def self.all
    ALL
  end

  def self.parse_guest_array(guests)
    guests.each do |guest|
      guest_data = guest.split(", ", 2)
      name = guest_data[0]
      size = guest_data[1].split('dislikes ')[0].gsub(/[^0-9]/,"").to_i
      dislike = guest_data[1].split('dislikes ')[1]
      dislike_arr = dislike.split(", ") if dislike != nil
      # binding.pry
      Guest.new(name,size,dislike_arr)
    end
    # binding.pry
  end


end

# tables: A-8 B-8 C-7 D-7
# Thornton, party of 3
# Garcia, party of 2
# Owens, party of 6 dislikes Thornton, Taylor
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
