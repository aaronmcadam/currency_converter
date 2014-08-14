class Money
  def initialize(amount:, currency:)
    @amount = amount
    @currency = currency
  end

  def to_s
    "#{amount} #{currency.upcase}"
  end

  private

  attr_reader :amount, :currency
end

describe Money do
  describe "#to_s" do
    it "output the amount and the currency" do
      money = Money.new(amount: 10, currency: :usd)

      result = money.to_s

      expect(result).to eq("10 USD")
    end
  end
end
