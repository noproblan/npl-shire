Types::TicketOptionType = GraphQL::ObjectType.define do
  name 'TicketOption'
  description ''

  field :id, !types.ID
  field :name, !types.String
  field :price, !types.Int
  field :ticket, !Types::TicketType
end
