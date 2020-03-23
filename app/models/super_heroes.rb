class Superheroes

  attr_accessor :name, :super_power, :hero_bio

  @@all = []

  def initialize(params)
    @name = params[:name]
    @super_power = params[:super_power]
    @hero_bio  = params[:hero_bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
