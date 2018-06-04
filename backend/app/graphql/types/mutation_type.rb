Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createUser, function: Resolvers::CreateUser.new
  field :signInUser, function: Resolvers::SignInUser.new

  field :createTicket, Types::TicketType do
    description 'Create ticket for lan'
    resolve lambda { |_obj, _args, ctx|
      Ticket.create!(
        lan: Lan.first_current_or_upcoming,
        user: ctx[:current_user]
      )
    }
  end
end
