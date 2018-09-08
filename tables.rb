class Table

  attr_accessor :name, :max_size, :guest_names,:seats_taken, :party_name_size
  ALL = []

  def initialize(name, max_size,seats_taken = 0 )
    @name = name
    @max_size = max_size
    @guest_names = []
    @party_name_size = []
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
      Guest.all.map do |guest|
        # created variables to simplify comparison below.
        overload = table.seats_taken + guest.size
        dislikes = guest.dislikes
        table_size = table.max_size
        if guest.seated
        elsif overload <= table_size && dislikes != nil
          dislikes.each do |person|
            if !table.guest_names.include?(person)
              table.party_name_size << "#{guest.name} party of #{guest.size}"
              table.guest_names << guest.name
              table.seats_taken += guest.size
              guest.seated = true
            end
          end
        elsif overload <= table_size && !table.guest_names.include?(guest.name)
          table.party_name_size << "#{guest.name}, party of #{guest.size}"
          table.guest_names << guest.name
          table.seats_taken += guest.size
          guest.seated = true
        end
      end
    end
    Guest.all.each do |guest|
      if !guest.seated
        puts "Unable to seat all guests"
        break
      end
    end
    Table.all.each do |table|
      puts "\n Table #{table.name}"
      table.party_name_size.each {|intro| puts intro}

    end
    puts "\n All haters seated"
  end

end
