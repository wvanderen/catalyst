require 'rails_helper'

RSpec.describe Practice, type: :model do
  let(:practice) { Practice.create!(title: "New Practice Title", description: "New Practice Description", threshold: 1, experience: 2, type: 0) }
  
  describe "attributes" do
      it "has title, description, duration and experience attributes" do
          expect(practice).to have_attributes(title: "New Practice Title", description: "New Practice Description", threshold: 1, experience: 2, type: 0)
      end
  end
end
