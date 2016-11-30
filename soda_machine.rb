class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
      if soda
        @cash += soda.price
        @sodas.delete(soda)
      else
        nil
      end
  end
end
