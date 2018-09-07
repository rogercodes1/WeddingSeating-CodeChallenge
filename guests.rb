class Guest

  ALL = []

  def initialize(guest_name, size, dislike)
    @guest_name = guest_name
    @size = size
    @dislike = []
    ALL << self
  end


  def self.all
    ALL
  end

  def self.parse_guest_array(guests)
    guests.each do |guest|
      guest_data = guest.split(", ", 2)
      party_size = guest_data[1].split('dislikes ')
      dislike = guest_data[1].split('dislikes ')[1]
      binding.pry
    end

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
