class Herbalry
  attr_accessor :name, :description, :product

  def initialize(name, description, product)
    @name = name
    @description = description
    @product = product
  end

  def to_s
    "Name:#{name}\nDescription:#{description}\nProduct:#{product}"
  end
end
