Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description ''

  field :id, !types.ID
  field :nickname, !types.String
  field :tickets, types[Types::TicketType]
end
