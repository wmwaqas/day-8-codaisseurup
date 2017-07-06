require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }

  it "shows the event's details" do
    visit event_url(event)


    expect(page).to have_text(event.capacity)
    #expect(page).to have_text(event.)
    #expect(page).to have_text(event.)
    expect(page).to have_text(event.name)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.location)
  end
end
