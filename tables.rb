class Table

  attr_accessor :name, :size
  ALL = []

  def initialize(name, size )
    @name = name
    @size = size
    @guest_names = []
    @current = nil
    @available = nil
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
      Table.new(name, size)
    end
  end

end
