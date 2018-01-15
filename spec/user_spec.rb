require_relative '../app/models/user.rb'
require 'rails_helper'

RSpec.describe User, type :model do
  let(:user) {User.create!(name:"User Name", email: "user@place.com", password:"password")}
  it {is_expected.to validate_presence of(:name)}
  it {is_expected.to validate_length_of(:name).is_at_least(1)}

  it {is_expected.to validate_presence of(:email)}
  it {is_expected.to validate_uniqueness of(:email)}
  it {is_expected.to validate_length_of(:email).is_at_least(4)}
  it {is_expected.to allow_value("user@place.com").for(:email)}
 end
end
