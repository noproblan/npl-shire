require 'rails_helper'

RSpec.describe Resolvers::CreateUser do
  def perform(args = {})
    Resolvers::CreateUser.new.call(nil, args, nil)
  end

  context 'when called with valid arguments' do
    let(:mutation) do
      {
        nickname: 'Sadialwadidrah',
        authProvider: {
          email: {
            email: 'email@example.com',
            password: '[omitted]'
          }
        }
      }
    end

    it 'is expected to create a user' do
      user = perform(mutation)
      expect(user).to be_persisted
      expect(user.nickname).to eq('Sadialwadidrah')
      expect(user.email).to eq('email@example.com')
    end
  end

  context 'when called with invalid arguments' do
    it 'is expected to raise an error' do
      expect(perform(lulz: 'gach')).to be_a(GraphQL::ExecutionError)
    end
  end
end