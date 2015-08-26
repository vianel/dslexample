class Console
  attr_accessor :name,:games,:controller,:accesories

  def initialize(name)
    @name = name
  end

  def add_controller(*controllers)
    raise ArgumentError, 'Controller limit exceded ' if controllers.size > 5
    super
  rescue ArgumentError => a
    dif = controllers.size - 5
    puts puts a.to_s + " delete " + dif.to_s + " Toppins"
  end
  private  
  
  def method_missing(name, *args)
    if name.to_s.include?('add_')
      self.send("#{name.to_s.split("add_")[1]}=", args)
    else
      raise NameError, 'No Exists method ' + name.to_s 
    end
  rescue NameError => a
    puts a
  end
end