class Money
  attr_reader :amount, :currency

  def initialize(amount:, currency:)
    @amount = amount
    @currency = currency
  end

  def inspect
    "#{amount} #{currency.upcase}"
  end

  def +(other_money)
    self.class.new(amount: amount + other_money.amount, currency: currency)
  end
end

describe Money do
  describe "#inspect" do
    it "outputs the amount and the currency" do
      money = Money.new(amount: 10, currency: :usd)

      result = money.inspect

      expect(result).to eq("10 USD")
    end
  end

  describe "addition" do
    context "when the currencies are the same" do
      it "adds them together" do
        ten_dollars = Money.new(amount: 10, currency: :usd)
        twenty_dollars = Money.new(amount: 20, currency: :usd)

        result = (ten_dollars + twenty_dollars).inspect

        expect(result).to eq("30 USD")
      end
    end
  end
end
