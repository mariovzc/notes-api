require 'rails_helper'

RSpec.describe Note, type: :model do
  note = Note.new(data: "hello")

  it "is valid with valid attributes" do
    expect(note).to be_valid
  end

  it "is not valid without a data" do
    note.data = nil
    expect(note).to_not be_valid
  end
end
