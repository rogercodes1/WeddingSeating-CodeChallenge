class Guest

  def initialize(guest_name, size)
    @guest_name = guest_name
    @size = size
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
