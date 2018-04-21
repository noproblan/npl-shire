Types::TicketType = GraphQL::ObjectType.define do
  name 'Ticket'
  description ''

  field :id, !types.ID
  field :basePrice, !types.Int, property: :base_price
  # field :status, !Types::TicketStatusType
  field :lan, !Types::LanType
  field :user, !Types::UserType
  field :ticketOptions, types[Types::TicketOptionType], property: :ticket_options
end
