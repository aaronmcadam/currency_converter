class MoneySum
  def initialize(monies:)
    @monies = monies
  end

  def inspect
    monies.each_with_object("") { |money, output|
      index = monies.index(money).to_i
      output << money
      output << " + " unless monies[index] == monies.last
    }
  end

  private

  attr_reader :monies
end
