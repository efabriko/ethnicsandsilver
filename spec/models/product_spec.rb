require 'rails_helper'

describe Product do
  context "When the product has comments" do
    let(:product) { Product.create!(name: "Bracelet", price: "10")}
    let(:user) { User.create!(email: "test3@test.fr", password: "123456")}

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bracelet!")
      product.comments.create!(rating: 3, user: user, body: "Ok bracelet!")
      product.comments.create!(rating: 5, user: user, body: "Great bracelet!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq(3)
    end

    it "will not be valid without a name" do
      expect(Product.new(description: "Nice bracelet")).not_to be_valid
    end

  end

end
