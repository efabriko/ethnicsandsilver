require 'rails_helper'

describe Comment do
  context "comment must have a body description" do
    it "will not be valid without a body description" do
      expect(Comment.new(body: "")).not_to be_valid
    end
  end
end
