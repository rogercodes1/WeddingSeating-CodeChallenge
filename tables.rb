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
      max_size = table.split("-")[1].to_i
      Table.new(name, max_size, )
    end
  end

  def self.fill_tables
    Table.all.map do |table|
      Guest.all.each do |guest|
        overload = table.seats_taken + guest.size
        dislikes = guest.dislikes
        table_size = table.max_size
        puts 'before ************************************************'
        if dislikes == nil && overload <= table_size && !table.guest_names.include?(guest.name)
          table.guest_names << guest.name
          table.seats_taken += guest.size
          puts "if **********************************************"
        elsif overload <= table_size && dislikes.size >=1
          dislikes.each do |person|
            binding.pry
            if !table.guest_names.include?(person)
              table.guest_names << guest.name
              table.seats_taken += guest.size
              puts "elsif if ***************************************"
              binding.pry
            end

          end
        end
        puts table.to_s
        binding.pry
      end
    end
  end

end
