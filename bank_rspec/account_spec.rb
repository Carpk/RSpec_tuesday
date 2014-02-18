require "rspec"

require_relative "account"

describe Account do

  let(:account) { Account.new('1011234893', 50) }

  describe "#initialize" do
    it "should take at least 1 arument" do
      expect { Account.new() }.to raise_error(ArgumentError)
    end
  end

  describe "#transactions" do
    it "should show accounts balance" do
      expect account.transactions.should eq([50])
    end
  end

  describe "#balance" do
    it "should show total" do
      expect account.balance.should eq(50)
    end
  end

  describe "#account_number" do
    it "should obfuscate account number" do
      expect account.acct_number.should eq("******4893")
    end
  end

  describe "deposit!" do
    it "should take argument, add, and return total" do
      expect account.deposit!(25).should eq(75)
    end
  end

  describe "#withdraw!" do
    it "should take argument, subtract, and return total" do
      expect account.withdraw!(25).should eq(25)
    end
  end
end
