require "./politican.rb"
describe Politician do
it "reports that it is a politician" do
person = Politican.new("John Doe", "Democrat")
expect(person).to be_a(Politican)
end

it "can tell its name" do
person = Politician.new("John Doe", "Democrat)
expect(person.name).to eq("John Doe")
end

it "can tell its party affiliation" do

end
end
