require 'rails_helper'

RSpec.describe Part, type: :model do
  subject{ 
    described_class.new(title: "Anything", description: "Lorem ipsum", start_date: DateTime.now, end_time: DateTime.now + 1.week)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a end_time" do
    subject.end_time = nil
    expect(subject).to_not be_valid
  end
end

describe "Assocaitions" do
  it "has one buyer" do
    assc = described_class.reflect_on_associations(:buyer)
    expect(assc.macro).to eq :has_one
  end

  it "has one seller" do
    assc = described_class.reflect_on_associations(:seller)
    expect(assc.macro).to eq :has_one
  end
end
