require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do

    #it "is invalid without name" do
      #event = Event.new(name: "")
      #event.valid?
      #expect(event.errors).to have_key(:name)
    #end

    #it "is invalid without description" do
      #event = Event.new(description: "")
      #event.valid?
      #expect(event.errors).to have_key(:description)
    #end

    #it "is invalid with a description longer than 500 characters" do
      #event = Event.new(description: "a" * 501)
      #event.valid?
      #expect(event.errors). to have_key(:description)
    #end

    # Better to write it as per Shoulda Matchers

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end
end
