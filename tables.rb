class Table

  attr_accessor :name, :max_size, :guest_names,:seats_taken
  ALL = []

  def initialize(name, max_size,seats_taken = 0 )
    @name = name
    @max_size = max_size
    @guest_names = []
    @seats_taken = seats_taken
    ALL << self
  end

  def self.all
    ALL
  end

  def self.tables_data(str_input)
    tables = str_input.split(":")[1].split(" ")
    tables.each do |table|
      name = table.split("-")[0]
      max_size = table.split("-")[1]
      Table.new(name, max_size, )
    end
  end

  def self.fill_tables
    Table.all.map do |table|
      Guest.all.each do |guest|
        binding.pry
        overload = table.seats_taken + guest.size
        if guest.dislike == nil && overload <= table.seats_taken
          table.guest_names << guest.name
          table.seats_taken += guest.size
          binding.pry
        else

        end
      end
    end
  end

end
