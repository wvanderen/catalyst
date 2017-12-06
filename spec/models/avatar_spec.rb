require 'rails_helper'

RSpec.describe Avatar, type: :model do
  let(:my_user) {User.create!(username: "username", email: "example@test.com", password: "password", experience: 0) }
  let(:avatar) { Avatar.create!(experience: 3, user: my_user, slots: 2) }
  
  describe "attributes" do
      it "has experience, user, and slots attributes" do
          expect(avatar).to have_attributes(experience: 3, user: my_user, slots: 2)
      end
  end
end
