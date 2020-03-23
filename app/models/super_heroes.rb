class Superheroes

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(params)
    @name = params[:name]
    @super_power = params[:power]
    @hero_bio  = params[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
