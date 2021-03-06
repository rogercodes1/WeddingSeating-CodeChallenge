require "pry"
require_relative "tables"
require_relative "guests"

input = 'tables: A-8 B-8 C-7 D-7'
Table.tables_data(input)

guests = [
  "Thornton, party of 3",
  "Garcia, party of 2",
  "Owens, party of 6 dislikes Thornton, Taylor",
  "Smith, party of 1 dislikes Garcia",
  "Taylor, party of 5",
  "Reese, party of 7"]
Guest.guest_array(guests)

Table.fill_tables
Table.does_everyone_fit?
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

alt_guests = [
  "Thornton, party of 3",
  "Garcia, party of 2",
  "Owens, party of 6 dislikes Thornton, Taylor",
  "Smith, party of 1 dislikes Garcia",
  "Taylor, party of 5",
  "Reese, party of 7"]
