require 'rails_helper'

RSpec.describe Author, type: :model do
  it "is valid with valid attributes" do
    author = Author.new(name: "Jane Doe", email: "jane@example.com")
    expect(author).to be_valid
  end

  it "is not valid without a name" do
    author = Author.new(name: nil, email: "jane@example.com")
    expect(author).not_to be_valid
  end

  it "is not valid without an email" do
    author = Author.new(name: "Jane Doe", email: nil)
    expect(author).not_to be_valid
  end
end
