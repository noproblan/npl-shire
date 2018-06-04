require 'rails_helper'

RSpec.describe Resolvers::SignInUser do
  def perform(args = {})
    Resolvers::SignInUser.new.call(nil, args, session: {})
  end

  let(:user) { create(:user) }
  let(:mutation) do
    {
      email: {
        email: try(:email),
        password: try(:password)
      }
    }
  end

  context 'when provided with valid login information' do
    let(:email) { user.email }
    let(:password) { user.password }

    it 'is expected to sucessfully login' do
      result = perform(mutation)
      expect(result).to be_present
      expect(result.token).to be_present
      expect(result.user).to eq(user)
    end
  end

  context 'when provided with credentials' do
    it 'is expected to fail' do
      expect(perform(mutation)).to be_nil
    end
  end

  context 'when provided with a non-existent email' do
    let(:email) { 'non-existent@example.com' }

    it 'is expected to fail' do
      expect(perform(mutation)).to be_nil
    end
  end

  context 'when provided with a wrong password' do
    let(:email) { user.email }
    let(:password) { 'bogus' }

    it 'is expected to fail' do
      expect(perform(mutation)).to be_nil
    end
  end
end