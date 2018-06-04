class Resolvers::CreateUser < GraphQL::Function
  AuthProviderInput = GraphQL::InputObjectType.define do
    name 'AuthProviderSignupData'

    argument :email, Types::AuthProviderEmailInput
  end

  argument :nickname, !types.String
  argument :authProvider, AuthProviderInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      nickname: args[:nickname],
      email: args[:authProvider]&.[](:email)&.[](:email),
      password: args[:authProvider]&.[](:email)&.[](:password)
    )
  rescue ActiveRecord::RecordInvalid => e
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end
