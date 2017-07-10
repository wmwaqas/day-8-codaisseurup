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
  describe "#event_price?" do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end
  describe "association with registration" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:registration) { create :registration, event: event, user: guest_user }

  it "has guests" do
    expect(event.guests).to include(guest_user)
  end
end
end
