class Money
  attr_reader :amount, :currency

  def initialize(amount:, currency:)
    @amount = amount
    @currency = currency
  end

  def inspect
    "#{amount} #{currency.upcase}"
  end
  alias_method :to_str, :inspect

  def +(other_money)
    self.class.new(amount: amount + other_money.amount, currency: currency)
  end
end
