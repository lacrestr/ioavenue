#TEST FILE Bank_account_spec.rb
require "./bank_account.rb"

describe BankAccount do
    
  it "is created with an opening balance and the name of the client" do
      account = BankAccount.new(500, "Sarah")
      expect(account).to be_a(BankAccount)
  end
    
  it "can report it's balance" do
   account = BankAccount.new(500, "Sarah")
      expect(account.balance).to eq(500)
  end
    
  it "can make deposits" do
      account = BankAccount.new(500, "Sarah")
      account.deposit(500)
      expect(account.balance).to eq(1000)
  end
    
  it "can make withdrawals" do
      account = BankAccount.new(500, "Sarah")
      account.withdraw(200)
      expect(account.balance).to eq(300)
  end
  it "can transfer funds to another bank account" do
      account1 = BankAccount.new(500, "Sarah")
      account2 = BankAccount.new(1000, "Bridget")
      account2.transfer(200, account1)
      expect(account1.balance).to eq(700)
      expect(account2.balance).to eq(800)
  end
  it "has a minimum opening balance" do
      expect { BankAccount.new(100, "Sarah") }.to raise_error(ArgumentError)
  end
    
  it "allow the bank to change the opening minimum balance" do
    BankAccount.minimum_balance(250)
    expect { BankAccount.new(230, "Sarah") }.to raise_error(ArgumentError)
    expect { BankAccount.new(300, "Bridget") }.to_not raise_error(ArgumentError)
end
end