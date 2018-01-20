require_relative '../app/models/herbalry'

RSpec.describe Herbalry do
  describe "attributes" do
    it "responds to name" do
      herbalry = Herbalry.new('Plant Name', 'Genus Name', 'Text' )
      expect(herbalry).to respond_to(:name)
    end

    it "responds to description" do
      herbalry = Herbalry.new('Plant Name', 'Genus Name', 'Text')
      expect(herbalry).to respond_to(:description)
    end

    it "responds to product" do
      herbalry = Herbalry.new('Plant Name', 'Genus Name', 'Text')
      expect(herbalry).to respond_to(:product)
    end
  end
end
