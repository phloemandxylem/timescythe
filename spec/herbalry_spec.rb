require_relative '../app/models/herbalry'

RSpec.describe Herbalry do
  describe "attributes" do
    it "respondes to name" do
      herbalry = Herbalry.new
      expect(herbalry).to respond_to(:name)
end
