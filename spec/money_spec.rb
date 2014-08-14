require "./money"

describe Money do
  describe "#inspect" do
    it "outputs the amount and the currency" do
      money = Money.new(amount: 10, currency: :usd)

      result = money.inspect

      expect(result).to eq("10 USD")
    end
  end

  describe "#to_str" do
    it "implicitly converts to a String" do
      ten_dollars = Money.new(amount: 10, currency: :usd)

      result = String(ten_dollars)

      expect(result).to be_a(String)
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
