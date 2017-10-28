require "rails_helper"

# Specs in this file have access to a helper object that includes
# the IdeasHelper. For example:
#
# describe IdeasHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe IdeasHelper, type: :helper do
  describe "naughty_filter" do
    it "filters poop" do
      expect(naughty_filter("poop")).to eq("heck")
    end
    it "does not filter nice words" do
      expect(naughty_filter("I like cats")).to eq("I like cats")
    end
    it "filters out only naughty words" do
      expect(naughty_filter("I like poop")).to eq("I like heck")
    end
    it "replaces multiples naughty words"do
      expect(naughty_filter("poop poop")).to eq("heck heck")
    end
    it "filters butt" do
      expect(naughty_filter("butt")).to eq("fry")
    end
    it "replaces all caps works" do
      expect(naughty_filter("butt BUTT Butt BuTT")).to eq("fry fry fry fry")
    end
    it "replaces all caps works" do
      expect(naughty_filter("poop POOP Poop")).to eq("heck heck heck")
    end
  end
end
