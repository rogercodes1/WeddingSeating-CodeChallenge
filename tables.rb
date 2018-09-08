class Table

  attr_accessor :name, :size
  ALL = []

  def initialize(name, size,total_guests = 0 )
    @name = name
    @size = size
    @guest_names = []
    @total_guests = total_guests
    ALL << self
  end

  def self.all
    ALL
  end

  def self.tables_data(str_input)
    tables = str_input.split(":")[1].split(" ")
    tables.each do |table|
      name = table.split("-")[0]
      size = table.split("-")[1]
      Table.new(name, size, )
    end
  end

  def self.fill_tables(guests)
    Table.all.each do |table|
      binding.pry
    end
  end

end
