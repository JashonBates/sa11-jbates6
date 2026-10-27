require_relative "../lib/api_key_validator"

RSpec.describe "Publishable API Keys" do
	it "Accepts a valid publishable key" do
		expect(valid_api_key?("pk-A1bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")). to be true 
	end

	it "Rejects wrong prefix" do
		expect(valid_api_key?("fk-A1cdbbbbbbbbbbbbbbbbbbbbbbbbbbbb")).to be false 
	end


	it "Rejects a key with no uppercase" do
		expect(valid_api_key?("pk-abcdefghijklmnopqrstuvwxyz123456")).to be false
	end
end
