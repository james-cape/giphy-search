require 'rails_helper'

describe GiphyService do

  describe "users" do
    it "finds current five tigers" do
      tigers = GiphyService.new.tiger_info.take(5)
      tiger = tigers.first

      expect(tigers.count).to eq(5)

      expect(tiger[:name]).to eq("brownfield-of-dreams")
      expect(tiger[:url]).to eq("https://api.giphy.com/tigers/james-cape/brownfield-of-dreams")
    end
  end
end
