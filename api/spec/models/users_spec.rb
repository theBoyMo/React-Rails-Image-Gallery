require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password_digest) }

  it 'is not valid if the password is less than 8 characters in length' do
    user = User.new(name: 'Tom', email: 'tom@ex.com', password: '12345');
    expect(user).to_not be_valid
  end
end