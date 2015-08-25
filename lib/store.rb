class Store
  @consoles = Array.new

  def self.new_console name,&b
    console = Console.new(name)
    console.instance_eval(&b) if block_given?
    @consoles << console
  end

  def self.print_consoles
    puts @consoles
  end
end