require "./money"
require "./money_sum"

describe MoneySum do
  describe "#inspect" do
    it "outputs a collection of amounts and currencies" do
      # Would like to use doubles here,
      # but RSpec doubles don't seem to respond to #to_str
      # (needed by `output << money` in MoneySum#inspect)
      ten_dollars = Money.new(amount: 10, currency: :usd)
      twenty_dollars = Money.new(amount: 20, currency: :usd)
      money_sum = MoneySum.new(monies: [ten_dollars, twenty_dollars])

      result = money_sum.inspect

      expect(result).to eq("10 USD + 20 USD")
    end
  end
end
